; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_disable_sriov.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_disable_sriov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Unloading driver while VFs are assigned - VFs will not be deallocated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_disable_sriov(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %3 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %4 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i64 @pci_vfs_assigned(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %10 = call i32 @DP(i32 %9, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pci_disable_sriov(i32 %14)
  br label %16

16:                                               ; preds = %11, %8
  ret void
}

declare dso_local i64 @pci_vfs_assigned(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @pci_disable_sriov(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
