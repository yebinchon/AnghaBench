; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_prog_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_prog_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i64 }
%struct.bpf_prog = type { i32 }
%struct.rc_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BPF_PROG_TYPE_LIRC_MODE2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lirc_prog_detach(%union.bpf_attr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca %struct.bpf_prog*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  %7 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %8 = bitcast %union.bpf_attr* %7 to i64*
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %55

14:                                               ; preds = %1
  %15 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %16 = bitcast %union.bpf_attr* %15 to i32*
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BPF_PROG_TYPE_LIRC_MODE2, align 4
  %19 = call %struct.rc_dev* @bpf_prog_get_type(i32 %17, i32 %18)
  %20 = bitcast %struct.rc_dev* %19 to %struct.bpf_prog*
  store %struct.bpf_prog* %20, %struct.bpf_prog** %4, align 8
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %22 = bitcast %struct.bpf_prog* %21 to %struct.rc_dev*
  %23 = call i64 @IS_ERR(%struct.rc_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %27 = bitcast %struct.bpf_prog* %26 to %struct.rc_dev*
  %28 = call i32 @PTR_ERR(%struct.rc_dev* %27)
  store i32 %28, i32* %2, align 4
  br label %55

29:                                               ; preds = %14
  %30 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %31 = bitcast %union.bpf_attr* %30 to i32*
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.rc_dev* @rc_dev_get_from_fd(i32 %32)
  store %struct.rc_dev* %33, %struct.rc_dev** %5, align 8
  %34 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %35 = call i64 @IS_ERR(%struct.rc_dev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %39 = bitcast %struct.bpf_prog* %38 to %struct.rc_dev*
  %40 = call i32 @bpf_prog_put(%struct.rc_dev* %39)
  %41 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %42 = call i32 @PTR_ERR(%struct.rc_dev* %41)
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %29
  %44 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %45 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %46 = bitcast %struct.bpf_prog* %45 to %struct.rc_dev*
  %47 = call i32 @lirc_bpf_detach(%struct.rc_dev* %44, %struct.rc_dev* %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.bpf_prog*, %struct.bpf_prog** %4, align 8
  %49 = bitcast %struct.bpf_prog* %48 to %struct.rc_dev*
  %50 = call i32 @bpf_prog_put(%struct.rc_dev* %49)
  %51 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %52 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %51, i32 0, i32 0
  %53 = call i32 @put_device(i32* %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %43, %37, %25, %11
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.rc_dev* @bpf_prog_get_type(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.rc_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.rc_dev*) #1

declare dso_local %struct.rc_dev* @rc_dev_get_from_fd(i32) #1

declare dso_local i32 @bpf_prog_put(%struct.rc_dev*) #1

declare dso_local i32 @lirc_bpf_detach(%struct.rc_dev*, %struct.rc_dev*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
