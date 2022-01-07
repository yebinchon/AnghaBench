; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_prog_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_prog_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i64 }
%struct.bpf_prog = type { i32 }
%struct.rc_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lirc_prog_attach(%union.bpf_attr* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.bpf_attr*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.rc_dev*, align 8
  %7 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %8 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %9 = bitcast %union.bpf_attr* %8 to i64*
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %34

15:                                               ; preds = %2
  %16 = load %union.bpf_attr*, %union.bpf_attr** %4, align 8
  %17 = bitcast %union.bpf_attr* %16 to i32*
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.rc_dev* @rc_dev_get_from_fd(i32 %18)
  store %struct.rc_dev* %19, %struct.rc_dev** %6, align 8
  %20 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %21 = call i64 @IS_ERR(%struct.rc_dev* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.rc_dev* %24)
  store i32 %25, i32* %3, align 4
  br label %34

26:                                               ; preds = %15
  %27 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %28 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %29 = call i32 @lirc_bpf_attach(%struct.rc_dev* %27, %struct.bpf_prog* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %31 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %30, i32 0, i32 0
  %32 = call i32 @put_device(i32* %31)
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %26, %23, %12
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.rc_dev* @rc_dev_get_from_fd(i32) #1

declare dso_local i64 @IS_ERR(%struct.rc_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.rc_dev*) #1

declare dso_local i32 @lirc_bpf_attach(%struct.rc_dev*, %struct.bpf_prog*) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
