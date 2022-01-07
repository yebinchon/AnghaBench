; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_vmci_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_vmw_balloon.c_vmballoon_vmci_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmballoon = type { i32 }

@VMW_BALLOON_CMD_VMCI_DOORBELL_SET = common dso_local global i32 0, align 4
@VMCI_INVALID_ID = common dso_local global i32 0, align 4
@VMCI_INVALID_HANDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmballoon*)* @vmballoon_vmci_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmballoon_vmci_cleanup(%struct.vmballoon* %0) #0 {
  %2 = alloca %struct.vmballoon*, align 8
  store %struct.vmballoon* %0, %struct.vmballoon** %2, align 8
  %3 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %4 = load i32, i32* @VMW_BALLOON_CMD_VMCI_DOORBELL_SET, align 4
  %5 = load i32, i32* @VMCI_INVALID_ID, align 4
  %6 = load i32, i32* @VMCI_INVALID_ID, align 4
  %7 = call i32 @vmballoon_cmd(%struct.vmballoon* %3, i32 %4, i32 %5, i32 %6)
  %8 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %9 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @vmci_handle_is_invalid(i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %1
  %14 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %15 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vmci_doorbell_destroy(i32 %16)
  %18 = load i32, i32* @VMCI_INVALID_HANDLE, align 4
  %19 = load %struct.vmballoon*, %struct.vmballoon** %2, align 8
  %20 = getelementptr inbounds %struct.vmballoon, %struct.vmballoon* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  br label %21

21:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @vmballoon_cmd(%struct.vmballoon*, i32, i32, i32) #1

declare dso_local i32 @vmci_handle_is_invalid(i32) #1

declare dso_local i32 @vmci_doorbell_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
