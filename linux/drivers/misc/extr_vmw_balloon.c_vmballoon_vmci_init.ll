; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_vmci_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_vmci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@VMW_BALLOON_SIGNALLED_WAKEUP_CMD = common dso_local global i32 0, align 4
@VMCI_FLAG_DELAYED_CB = common dso_local global i32 0, align 4
@VMCI_PRIVILEGE_FLAG_RESTRICTED = common dso_local global i32 0, align 4
@vmballoon_doorbell = common dso_local global i32 0, align 4
@VMCI_SUCCESS = common dso_local global i64 0, align 8
@VMW_BALLOON_CMD_VMCI_DOORBELL_SET = common dso_local global i32 0, align 4
@VMW_BALLOON_SUCCESS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmballoon*)* @vmballoon_vmci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmballoon_vmci_init(%struct.vmballoon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmballoon*, align 8
  %4 = alloca i64, align 8
  store %struct.vmballoon* %0, %struct.vmballoon** %3, align 8
  %5 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %6 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VMW_BALLOON_SIGNALLED_WAKEUP_CMD, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %46

12:                                               ; preds = %1
  %13 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %14 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %13, i32 0, i32 1
  %15 = load i32, i32* @VMCI_FLAG_DELAYED_CB, align 4
  %16 = load i32, i32* @VMCI_PRIVILEGE_FLAG_RESTRICTED, align 4
  %17 = load i32, i32* @vmballoon_doorbell, align 4
  %18 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %19 = call i64 @vmci_doorbell_create(%struct.TYPE_2__* %14, i32 %15, i32 %16, i32 %17, %struct.vmballoon* %18)
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load i64, i64* @VMCI_SUCCESS, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %12
  br label %41

24:                                               ; preds = %12
  %25 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %26 = load i32, i32* @VMW_BALLOON_CMD_VMCI_DOORBELL_SET, align 4
  %27 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %28 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %32 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @__vmballoon_cmd(%struct.vmballoon* %25, i32 %26, i32 %30, i32 %34, i32* null)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @VMW_BALLOON_SUCCESS, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %24
  br label %41

40:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %46

41:                                               ; preds = %39, %23
  %42 = load %struct.vmballoon*, %struct.vmballoon** %3, align 8
  %43 = call i32 @vmballoon_vmci_cleanup(%struct.vmballoon* %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %40, %11
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @vmci_doorbell_create(%struct.TYPE_2__*, i32, i32, i32, %struct.vmballoon*) #1

declare dso_local i64 @__vmballoon_cmd(%struct.vmballoon*, i32, i32, i32, i32*) #1

declare dso_local i32 @vmballoon_vmci_cleanup(%struct.vmballoon*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
