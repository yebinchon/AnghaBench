; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_bpf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_bpf-lirc.c_lirc_bpf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bpf_prog_array_item = type { i64 }
%struct.bpf_prog_array = type { %struct.bpf_prog_array_item* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lirc_bpf_free(%struct.rc_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.bpf_prog_array_item*, align 8
  %4 = alloca %struct.bpf_prog_array*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %2, align 8
  %5 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  %6 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.bpf_prog_array* @lirc_rcu_dereference(i32 %9)
  store %struct.bpf_prog_array* %10, %struct.bpf_prog_array** %4, align 8
  %11 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %4, align 8
  %12 = icmp ne %struct.bpf_prog_array* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %4, align 8
  %16 = getelementptr inbounds %struct.bpf_prog_array, %struct.bpf_prog_array* %15, i32 0, i32 0
  %17 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %16, align 8
  store %struct.bpf_prog_array_item* %17, %struct.bpf_prog_array_item** %3, align 8
  br label %18

18:                                               ; preds = %28, %14
  %19 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %3, align 8
  %20 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %3, align 8
  %25 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @bpf_prog_put(i64 %26)
  br label %28

28:                                               ; preds = %23
  %29 = load %struct.bpf_prog_array_item*, %struct.bpf_prog_array_item** %3, align 8
  %30 = getelementptr inbounds %struct.bpf_prog_array_item, %struct.bpf_prog_array_item* %29, i32 1
  store %struct.bpf_prog_array_item* %30, %struct.bpf_prog_array_item** %3, align 8
  br label %18

31:                                               ; preds = %18
  %32 = load %struct.bpf_prog_array*, %struct.bpf_prog_array** %4, align 8
  %33 = call i32 @bpf_prog_array_free(%struct.bpf_prog_array* %32)
  br label %34

34:                                               ; preds = %31, %13
  ret void
}

declare dso_local %struct.bpf_prog_array* @lirc_rcu_dereference(i32) #1

declare dso_local i32 @bpf_prog_put(i64) #1

declare dso_local i32 @bpf_prog_array_free(%struct.bpf_prog_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
