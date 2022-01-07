; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_enable_mbx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_enable_mbx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { i32 }

@NIC_PF_MAILBOX_INT = common dso_local global i64 0, align 8
@NIC_PF_MAILBOX_ENA_W1S = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicpf*)* @nic_enable_mbx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nic_enable_mbx_intr(%struct.nicpf* %0) #0 {
  %2 = alloca %struct.nicpf*, align 8
  %3 = alloca i32, align 4
  store %struct.nicpf* %0, %struct.nicpf** %2, align 8
  %4 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %5 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @pci_sriov_get_totalvfs(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %9 = load i64, i64* @NIC_PF_MAILBOX_INT, align 8
  %10 = load i32, i32* %3, align 4
  %11 = icmp slt i32 %10, 64
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 %13)
  %15 = sub nsw i32 %14, 1
  %16 = sext i32 %15 to i64
  br label %18

17:                                               ; preds = %1
  br label %18

18:                                               ; preds = %17, %12
  %19 = phi i64 [ %16, %12 ], [ -1, %17 ]
  %20 = trunc i64 %19 to i32
  %21 = call i32 @nic_reg_write(%struct.nicpf* %8, i64 %9, i32 %20)
  %22 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %23 = load i64, i64* @NIC_PF_MAILBOX_ENA_W1S, align 8
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 64
  br i1 %25, label %26, label %31

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 %27)
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  br label %32

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %26
  %33 = phi i64 [ %30, %26 ], [ -1, %31 ]
  %34 = trunc i64 %33 to i32
  %35 = call i32 @nic_reg_write(%struct.nicpf* %22, i64 %23, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = icmp sgt i32 %36, 64
  br i1 %37, label %38, label %73

38:                                               ; preds = %32
  %39 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %40 = load i64, i64* @NIC_PF_MAILBOX_INT, align 8
  %41 = add i64 %40, 4
  %42 = load i32, i32* %3, align 4
  %43 = sub nsw i32 %42, 64
  %44 = icmp slt i32 %43, 64
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 %46, 64
  %48 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 %47)
  %49 = sub nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  br label %52

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %45
  %53 = phi i64 [ %50, %45 ], [ -1, %51 ]
  %54 = trunc i64 %53 to i32
  %55 = call i32 @nic_reg_write(%struct.nicpf* %39, i64 %41, i32 %54)
  %56 = load %struct.nicpf*, %struct.nicpf** %2, align 8
  %57 = load i64, i64* @NIC_PF_MAILBOX_ENA_W1S, align 8
  %58 = add i64 %57, 4
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 %59, 64
  %61 = icmp slt i32 %60, 64
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load i32, i32* %3, align 4
  %64 = sub nsw i32 %63, 64
  %65 = call i32 (i32, ...) bitcast (i32 (...)* @BIT_ULL to i32 (i32, ...)*)(i32 %64)
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  br label %69

68:                                               ; preds = %52
  br label %69

69:                                               ; preds = %68, %62
  %70 = phi i64 [ %67, %62 ], [ -1, %68 ]
  %71 = trunc i64 %70 to i32
  %72 = call i32 @nic_reg_write(%struct.nicpf* %56, i64 %58, i32 %71)
  br label %73

73:                                               ; preds = %69, %32
  ret void
}

declare dso_local i32 @pci_sriov_get_totalvfs(i32) #1

declare dso_local i32 @nic_reg_write(%struct.nicpf*, i64, i32) #1

declare dso_local i32 @BIT_ULL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
