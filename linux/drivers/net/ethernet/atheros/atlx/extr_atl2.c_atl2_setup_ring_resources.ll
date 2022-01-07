; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_setup_ring_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_setup_ring_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl2_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.tx_pkt_status*, %struct.rx_desc*, i64, i32, %struct.pci_dev* }
%struct.tx_pkt_status = type { i32 }
%struct.rx_desc = type { i32 }
%struct.pci_dev = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl2_adapter*)* @atl2_setup_ring_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_setup_ring_resources(%struct.atl2_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atl2_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.atl2_adapter* %0, %struct.atl2_adapter** %3, align 8
  %7 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %7, i32 0, i32 12
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 1
  %14 = add nsw i32 %13, 7
  %15 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 4
  %19 = add nsw i32 %14, %18
  %20 = add nsw i32 %19, 7
  %21 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1536
  %25 = add nsw i32 %20, %24
  %26 = add nsw i32 %25, 127
  store i32 %26, i32* %5, align 4
  %27 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %31, i32 0, i32 4
  %33 = call i32 @pci_alloc_consistent(%struct.pci_dev* %29, i32 %30, i32* %32)
  %34 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %34, i32 0, i32 11
  store i32 %33, i32* %35, align 8
  %36 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %37 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %1
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %171

43:                                               ; preds = %1
  %44 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 7
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, 7
  %59 = sub nsw i32 8, %58
  br label %61

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %60, %54
  %62 = phi i32 [ %59, %54 ], [ 0, %60 ]
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %68, i32 0, i32 11
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %74, i32 0, i32 10
  store i64 %73, i64* %75, align 8
  %76 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %84 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %83, i32 0, i32 6
  store i32 %82, i32* %84, align 8
  %85 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 7
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %61
  %91 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, 7
  %95 = sub nsw i32 8, %94
  br label %97

96:                                               ; preds = %61
  br label %97

97:                                               ; preds = %96, %90
  %98 = phi i32 [ %95, %90 ], [ 0, %96 ]
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %101 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %104, i32 0, i32 10
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i32*
  %108 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %110, %111
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %107, i64 %113
  %115 = bitcast i32* %114 to %struct.tx_pkt_status*
  %116 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %117 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %116, i32 0, i32 8
  store %struct.tx_pkt_status* %115, %struct.tx_pkt_status** %117, align 8
  %118 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %119 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = mul nsw i32 %123, 4
  %125 = add nsw i32 %120, %124
  %126 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %127 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %126, i32 0, i32 7
  store i32 %125, i32* %127, align 4
  %128 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, 127
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %97
  %134 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = and i32 %136, 127
  %138 = sub nsw i32 128, %137
  br label %140

139:                                              ; preds = %97
  br label %140

140:                                              ; preds = %139, %133
  %141 = phi i32 [ %138, %133 ], [ 0, %139 ]
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp sgt i32 %142, 7
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load i32, i32* %6, align 4
  %146 = sub nsw i32 %145, 8
  store i32 %146, i32* %6, align 4
  br label %150

147:                                              ; preds = %140
  %148 = load i32, i32* %6, align 4
  %149 = add nsw i32 %148, 120
  store i32 %149, i32* %6, align 4
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %157 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %156, i32 0, i32 8
  %158 = load %struct.tx_pkt_status*, %struct.tx_pkt_status** %157, align 8
  %159 = bitcast %struct.tx_pkt_status* %158 to i32*
  %160 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %161 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = mul nsw i32 %162, 4
  %164 = load i32, i32* %6, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %159, i64 %166
  %168 = bitcast i32* %167 to %struct.rx_desc*
  %169 = load %struct.atl2_adapter*, %struct.atl2_adapter** %3, align 8
  %170 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %169, i32 0, i32 9
  store %struct.rx_desc* %168, %struct.rx_desc** %170, align 8
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %150, %40
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i32 @pci_alloc_consistent(%struct.pci_dev*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
