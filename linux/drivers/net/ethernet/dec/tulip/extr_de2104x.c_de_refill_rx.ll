; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_refill_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.de_private = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32, %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@DE_RX_RING_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@DescOwn = common dso_local global i32 0, align 4
@RingEnd = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.de_private*)* @de_refill_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_refill_rx(%struct.de_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.de_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.de_private* %0, %struct.de_private** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %111, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @DE_RX_RING_SIZE, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %114

10:                                               ; preds = %6
  %11 = load %struct.de_private*, %struct.de_private** %3, align 8
  %12 = getelementptr inbounds %struct.de_private, %struct.de_private* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.de_private*, %struct.de_private** %3, align 8
  %15 = getelementptr inbounds %struct.de_private, %struct.de_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.sk_buff* @netdev_alloc_skb(i32 %13, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %115

21:                                               ; preds = %10
  %22 = load %struct.de_private*, %struct.de_private** %3, align 8
  %23 = getelementptr inbounds %struct.de_private, %struct.de_private* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.de_private*, %struct.de_private** %3, align 8
  %29 = getelementptr inbounds %struct.de_private, %struct.de_private* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %32 = call i32 @pci_map_single(i32 %24, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.de_private*, %struct.de_private** %3, align 8
  %34 = getelementptr inbounds %struct.de_private, %struct.de_private* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load i32, i32* %4, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %32, i32* %39, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = load %struct.de_private*, %struct.de_private** %3, align 8
  %42 = getelementptr inbounds %struct.de_private, %struct.de_private* %41, i32 0, i32 2
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store %struct.sk_buff* %40, %struct.sk_buff** %47, align 8
  %48 = load i32, i32* @DescOwn, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.de_private*, %struct.de_private** %3, align 8
  %51 = getelementptr inbounds %struct.de_private, %struct.de_private* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 3
  store i8* %49, i8** %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @DE_RX_RING_SIZE, align 4
  %59 = sub i32 %58, 1
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %21
  %62 = load i32, i32* @RingEnd, align 4
  %63 = load %struct.de_private*, %struct.de_private** %3, align 8
  %64 = getelementptr inbounds %struct.de_private, %struct.de_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %62, %65
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.de_private*, %struct.de_private** %3, align 8
  %69 = getelementptr inbounds %struct.de_private, %struct.de_private* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i8* %67, i8** %74, align 8
  br label %87

75:                                               ; preds = %21
  %76 = load %struct.de_private*, %struct.de_private** %3, align 8
  %77 = getelementptr inbounds %struct.de_private, %struct.de_private* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i8* @cpu_to_le32(i32 %78)
  %80 = load %struct.de_private*, %struct.de_private** %3, align 8
  %81 = getelementptr inbounds %struct.de_private, %struct.de_private* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  store i8* %79, i8** %86, align 8
  br label %87

87:                                               ; preds = %75, %61
  %88 = load %struct.de_private*, %struct.de_private** %3, align 8
  %89 = getelementptr inbounds %struct.de_private, %struct.de_private* %88, i32 0, i32 2
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = zext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i8* @cpu_to_le32(i32 %95)
  %97 = load %struct.de_private*, %struct.de_private** %3, align 8
  %98 = getelementptr inbounds %struct.de_private, %struct.de_private* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  store i8* %96, i8** %103, align 8
  %104 = load %struct.de_private*, %struct.de_private** %3, align 8
  %105 = getelementptr inbounds %struct.de_private, %struct.de_private* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load i32, i32* %4, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  br label %111

111:                                              ; preds = %87
  %112 = load i32, i32* %4, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %6

114:                                              ; preds = %6
  store i32 0, i32* %2, align 4
  br label %120

115:                                              ; preds = %20
  %116 = load %struct.de_private*, %struct.de_private** %3, align 8
  %117 = call i32 @de_clean_rings(%struct.de_private* %116)
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %115, %114
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @de_clean_rings(%struct.de_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
