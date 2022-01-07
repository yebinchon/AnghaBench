; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_cleanup_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_cleanup_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ns83820 = type { i32*, i32, i32, %struct.sk_buff** }
%struct.sk_buff = type { i32 }

@NR_TX_DESC = common dso_local global i32 0, align 4
@DESC_SIZE = common dso_local global i32 0, align 4
@DESC_BUFPTR = common dso_local global i32 0, align 4
@DESC_CMDSTS = common dso_local global i64 0, align 8
@CMDSTS_LEN_MASK = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ns83820*)* @ns83820_cleanup_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ns83820_cleanup_tx(%struct.ns83820* %0) #0 {
  %2 = alloca %struct.ns83820*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32*, align 8
  store %struct.ns83820* %0, %struct.ns83820** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %58, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @NR_TX_DESC, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %61

10:                                               ; preds = %6
  %11 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %12 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %11, i32 0, i32 3
  %13 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %13, i64 %15
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %19 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %18, i32 0, i32 3
  %20 = load %struct.sk_buff**, %struct.sk_buff*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %20, i64 %22
  store %struct.sk_buff* null, %struct.sk_buff** %23, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %57

26:                                               ; preds = %10
  %27 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %28 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @DESC_SIZE, align 4
  %32 = mul i32 %30, %31
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  store i32* %34, i32** %5, align 8
  %35 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %36 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* @DESC_BUFPTR, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @desc_addr_get(i32* %41)
  %43 = load i32*, i32** %5, align 8
  %44 = load i64, i64* @DESC_CMDSTS, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le32_to_cpu(i32 %46)
  %48 = load i32, i32* @CMDSTS_LEN_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %51 = call i32 @pci_unmap_single(i32 %37, i32 %42, i32 %49, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %52)
  %54 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %55 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %54, i32 0, i32 1
  %56 = call i32 @atomic_dec(i32* %55)
  br label %57

57:                                               ; preds = %26, %10
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %3, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %3, align 4
  br label %6

61:                                               ; preds = %6
  %62 = load %struct.ns83820*, %struct.ns83820** %2, align 8
  %63 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @NR_TX_DESC, align 4
  %66 = load i32, i32* @DESC_SIZE, align 4
  %67 = mul i32 %65, %66
  %68 = mul i32 %67, 4
  %69 = call i32 @memset(i32* %64, i32 0, i32 %68)
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @desc_addr_get(i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
