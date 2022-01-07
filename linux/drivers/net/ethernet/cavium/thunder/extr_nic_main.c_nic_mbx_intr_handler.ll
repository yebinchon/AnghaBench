; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_mbx_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nic_main.c_nic_mbx_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicpf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NIC_PF_INTR_ID_MBOX0 = common dso_local global i32 0, align 4
@NIC_PF_MAILBOX_INT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"PF interrupt Mbox%d 0x%llx\0A\00", align 1
@NIC_VF_PER_MBX_REG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Intr from VF %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nic_mbx_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nic_mbx_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nicpf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.nicpf*
  store %struct.nicpf* %10, %struct.nicpf** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %13 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* @NIC_PF_INTR_ID_MBOX0, align 4
  %16 = call i32 @pci_irq_vector(%struct.TYPE_2__* %14, i32 %15)
  %17 = icmp eq i32 %11, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %20

19:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %20

20:                                               ; preds = %19, %18
  %21 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %22 = load i64, i64* @NIC_PF_MAILBOX_INT, align 8
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 %23, 3
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i64 @nic_reg_read(%struct.nicpf* %21, i64 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %29 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = load i64, i64* %7, align 8
  %35 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34)
  store i64 0, i64* %8, align 8
  br label %36

36:                                               ; preds = %71, %20
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @NIC_VF_PER_MBX_REG, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %74

40:                                               ; preds = %36
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = shl i64 1, %42
  %44 = and i64 %41, %43
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %70

46:                                               ; preds = %40
  %47 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %48 = getelementptr inbounds %struct.nicpf, %struct.nicpf* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* @NIC_VF_PER_MBX_REG, align 8
  %55 = mul i64 %53, %54
  %56 = add i64 %51, %55
  %57 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %50, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %56)
  %58 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @NIC_VF_PER_MBX_REG, align 8
  %63 = mul i64 %61, %62
  %64 = add i64 %59, %63
  %65 = call i32 @nic_handle_mbx_intr(%struct.nicpf* %58, i64 %64)
  %66 = load %struct.nicpf*, %struct.nicpf** %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @nic_clear_mbx_intr(%struct.nicpf* %66, i64 %67, i32 %68)
  br label %70

70:                                               ; preds = %46, %40
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %8, align 8
  br label %36

74:                                               ; preds = %36
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %75
}

declare dso_local i32 @pci_irq_vector(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @nic_reg_read(%struct.nicpf*, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, ...) #1

declare dso_local i32 @nic_handle_mbx_intr(%struct.nicpf*, i64) #1

declare dso_local i32 @nic_clear_mbx_intr(%struct.nicpf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
