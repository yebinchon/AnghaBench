; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rx_csum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i8*, i32 }
%union.Vmxnet3_GenericDesc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i64, i32 }

@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@VMXNET3_RCD_CSUM_OK = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i8* null, align 8
@VMXNET3_RCD_TUC_SHIFT = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*, %struct.sk_buff*, %union.Vmxnet3_GenericDesc*)* @vmxnet3_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_rx_csum(%struct.vmxnet3_adapter* %0, %struct.sk_buff* %1, %union.Vmxnet3_GenericDesc* %2) #0 {
  %4 = alloca %struct.vmxnet3_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %union.Vmxnet3_GenericDesc*, align 8
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %union.Vmxnet3_GenericDesc* %2, %union.Vmxnet3_GenericDesc** %6, align 8
  %7 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %8 = bitcast %union.Vmxnet3_GenericDesc* %7 to %struct.TYPE_4__*
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %128, label %12

12:                                               ; preds = %3
  %13 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %128

21:                                               ; preds = %12
  %22 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %23 = bitcast %union.Vmxnet3_GenericDesc* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %21
  %28 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %29 = bitcast %union.Vmxnet3_GenericDesc* %28 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = load i32, i32* @VMXNET3_RCD_CSUM_OK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @VMXNET3_RCD_CSUM_OK, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %27
  %39 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %43 = bitcast %union.Vmxnet3_GenericDesc* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %38
  %48 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %49 = bitcast %union.Vmxnet3_GenericDesc* %48 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br label %53

53:                                               ; preds = %47, %38
  %54 = phi i1 [ true, %38 ], [ %52, %47 ]
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %59 = bitcast %union.Vmxnet3_GenericDesc* %58 to %struct.TYPE_4__*
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @BUG_ON(i32 %61)
  br label %127

63:                                               ; preds = %27, %21
  %64 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %65 = bitcast %union.Vmxnet3_GenericDesc* %64 to %struct.TYPE_4__*
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %63
  %70 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %71 = bitcast %union.Vmxnet3_GenericDesc* %70 to i32**
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le32_to_cpu(i32 %74)
  %76 = load i32, i32* @VMXNET3_RCD_TUC_SHIFT, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %69
  %81 = load i8*, i8** @CHECKSUM_UNNECESSARY, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %85 = bitcast %union.Vmxnet3_GenericDesc* %84 to %struct.TYPE_4__*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %80
  %90 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %91 = bitcast %union.Vmxnet3_GenericDesc* %90 to %struct.TYPE_4__*
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %89, %80
  %96 = phi i1 [ true, %80 ], [ %94, %89 ]
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = call i32 @BUG_ON(i32 %98)
  %100 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %101 = bitcast %union.Vmxnet3_GenericDesc* %100 to %struct.TYPE_4__*
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @BUG_ON(i32 %103)
  br label %126

105:                                              ; preds = %69, %63
  %106 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %107 = bitcast %union.Vmxnet3_GenericDesc* %106 to %struct.TYPE_4__*
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %105
  %112 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %6, align 8
  %113 = bitcast %union.Vmxnet3_GenericDesc* %112 to %struct.TYPE_4__*
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @htons(i64 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i8*, i8** @CHECKSUM_PARTIAL, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 0
  store i8* %119, i8** %121, align 8
  br label %125

122:                                              ; preds = %105
  %123 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %124 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %123)
  br label %125

125:                                              ; preds = %122, %111
  br label %126

126:                                              ; preds = %125, %95
  br label %127

127:                                              ; preds = %126, %53
  br label %131

128:                                              ; preds = %12, %3
  %129 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %130 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %129)
  br label %131

131:                                              ; preds = %128, %127
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
