; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.korina_private = type { i8*, i64, i64, i64, %struct.TYPE_4__*, %struct.sk_buff**, i8*, i64, i64, i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i8*, i8*, i64 }
%struct.sk_buff = type { %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i64, i64, i32 }

@KORINA_NUM_TDS = common dso_local global i32 0, align 4
@DMA_DESC_IOF = common dso_local global i32 0, align 4
@ETH_TX_FD = common dso_local global i32 0, align 4
@ETH_TX_LD = common dso_local global i32 0, align 4
@desc_empty = common dso_local global i8* null, align 8
@KORINA_NUM_RDS = common dso_local global i32 0, align 4
@KORINA_RBSIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_DESC_IOD = common dso_local global i32 0, align 4
@DMA_DESC_COD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @korina_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @korina_alloc_ring(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.korina_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.korina_private* @netdev_priv(%struct.net_device* %7)
  store %struct.korina_private* %8, %struct.korina_private** %4, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %46, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @KORINA_NUM_TDS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %49

13:                                               ; preds = %9
  %14 = load i32, i32* @DMA_DESC_IOF, align 4
  %15 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %16 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %15, i32 0, i32 12
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  store i32 %14, i32* %21, align 8
  %22 = load i32, i32* @ETH_TX_FD, align 4
  %23 = load i32, i32* @ETH_TX_LD, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %26 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %25, i32 0, i32 12
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 %24, i32* %31, align 8
  %32 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %33 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %32, i32 0, i32 12
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %40 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %39, i32 0, i32 12
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %13
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %9

49:                                               ; preds = %9
  %50 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %51 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %50, i32 0, i32 7
  store i64 0, i64* %51, align 8
  %52 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %53 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %52, i32 0, i32 8
  store i64 0, i64* %53, align 8
  %54 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %55 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %54, i32 0, i32 9
  store i64 0, i64* %55, align 8
  %56 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %57 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %56, i32 0, i32 10
  store i64 0, i64* %57, align 8
  %58 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %59 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %58, i32 0, i32 11
  store i64 0, i64* %59, align 8
  %60 = load i8*, i8** @desc_empty, align 8
  %61 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %62 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %128, %49
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @KORINA_NUM_RDS, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %131

67:                                               ; preds = %63
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = load i32, i32* @KORINA_RBSIZE, align 4
  %70 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %68, i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %5, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %2, align 4
  br label %165

76:                                               ; preds = %67
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %79 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %78, i32 0, i32 5
  %80 = load %struct.sk_buff**, %struct.sk_buff*** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %80, i64 %82
  store %struct.sk_buff* %77, %struct.sk_buff** %83, align 8
  %84 = load i32, i32* @DMA_DESC_IOD, align 4
  %85 = load i32, i32* @KORINA_RBSIZE, align 4
  %86 = call i32 @DMA_COUNT(i32 %85)
  %87 = or i32 %84, %86
  %88 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %89 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %88, i32 0, i32 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  store i32 %87, i32* %94, align 8
  %95 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %96 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %95, i32 0, i32 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  store i64 0, i64* %101, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = call i8* @CPHYSADDR(%struct.TYPE_4__* %104)
  %106 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %107 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %106, i32 0, i32 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  store i8* %105, i8** %112, align 8
  %113 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %114 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %113, i32 0, i32 4
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %118
  %120 = call i8* @CPHYSADDR(%struct.TYPE_4__* %119)
  %121 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %122 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %121, i32 0, i32 4
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %122, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i8* %120, i8** %127, align 8
  br label %128

128:                                              ; preds = %76
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %6, align 4
  br label %63

131:                                              ; preds = %63
  %132 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %133 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %132, i32 0, i32 4
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i64 0
  %136 = call i8* @CPHYSADDR(%struct.TYPE_4__* %135)
  %137 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %138 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %137, i32 0, i32 4
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 1
  store i8* %136, i8** %144, align 8
  %145 = load i32, i32* @DMA_DESC_COD, align 4
  %146 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %147 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %146, i32 0, i32 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = load i32, i32* %6, align 4
  %150 = sub nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %145
  store i32 %155, i32* %153, align 8
  %156 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %157 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %156, i32 0, i32 3
  store i64 0, i64* %157, align 8
  %158 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %159 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %158, i32 0, i32 2
  store i64 0, i64* %159, align 8
  %160 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %161 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %160, i32 0, i32 1
  store i64 0, i64* %161, align 8
  %162 = load i8*, i8** @desc_empty, align 8
  %163 = load %struct.korina_private*, %struct.korina_private** %4, align 8
  %164 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  store i32 0, i32* %2, align 4
  br label %165

165:                                              ; preds = %131, %73
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local %struct.korina_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @DMA_COUNT(i32) #1

declare dso_local i8* @CPHYSADDR(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
