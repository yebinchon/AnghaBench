; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_free_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_uli526x.c_uli526x_free_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.uli526x_board_info = type { i64, i32, %struct.tx_desc*, i32, i32, i32, i32, i32, i32, i32 }
%struct.tx_desc = type { %struct.tx_desc*, i32, i32 }

@TDES0_ERR_MASK = common dso_local global i32 0, align 4
@CR6_SFT = common dso_local global i32 0, align 4
@TX_WAKE_DESC_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.uli526x_board_info*)* @uli526x_free_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uli526x_free_tx_pkt(%struct.net_device* %0, %struct.uli526x_board_info* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.uli526x_board_info*, align 8
  %5 = alloca %struct.tx_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.uli526x_board_info* %1, %struct.uli526x_board_info** %4, align 8
  %7 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %8 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %7, i32 0, i32 2
  %9 = load %struct.tx_desc*, %struct.tx_desc** %8, align 8
  store %struct.tx_desc* %9, %struct.tx_desc** %5, align 8
  br label %10

10:                                               ; preds = %142, %2
  %11 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %12 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %146

15:                                               ; preds = %10
  %16 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %17 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, -2147483648
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %146

24:                                               ; preds = %15
  %25 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %26 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 2147483647
  br i1 %35, label %36, label %142

36:                                               ; preds = %24
  %37 = load i32, i32* %6, align 4
  %38 = ashr i32 %37, 3
  %39 = and i32 %38, 15
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %39
  store i32 %44, i32* %42, align 4
  %45 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %46 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = and i32 %48, 2047
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %49
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @TDES0_ERR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %141

59:                                               ; preds = %36
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 2
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %95

68:                                               ; preds = %59
  %69 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %70 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %69, i32 0, i32 9
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %74 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CR6_SFT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %68
  %80 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %81 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CR6_SFT, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %86 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %88 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %91 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @update_cr6(i32 %89, i32 %92)
  br label %94

94:                                               ; preds = %79, %68
  br label %95

95:                                               ; preds = %94, %59
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, 256
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %101 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %104

104:                                              ; preds = %99, %95
  %105 = load i32, i32* %6, align 4
  %106 = and i32 %105, 512
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %104
  %109 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %110 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %104
  %114 = load i32, i32* %6, align 4
  %115 = and i32 %114, 1024
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %119 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %117, %113
  %123 = load i32, i32* %6, align 4
  %124 = and i32 %123, 2048
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %122
  %127 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %128 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %126, %122
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 16384
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %137 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  br label %140

140:                                              ; preds = %135, %131
  br label %141

141:                                              ; preds = %140, %36
  br label %142

142:                                              ; preds = %141, %24
  %143 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %144 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %143, i32 0, i32 0
  %145 = load %struct.tx_desc*, %struct.tx_desc** %144, align 8
  store %struct.tx_desc* %145, %struct.tx_desc** %5, align 8
  br label %10

146:                                              ; preds = %23, %10
  %147 = load %struct.tx_desc*, %struct.tx_desc** %5, align 8
  %148 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %149 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %148, i32 0, i32 2
  store %struct.tx_desc* %147, %struct.tx_desc** %149, align 8
  %150 = load %struct.uli526x_board_info*, %struct.uli526x_board_info** %4, align 8
  %151 = getelementptr inbounds %struct.uli526x_board_info, %struct.uli526x_board_info* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @TX_WAKE_DESC_CNT, align 8
  %154 = icmp slt i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load %struct.net_device*, %struct.net_device** %3, align 8
  %157 = call i32 @netif_wake_queue(%struct.net_device* %156)
  br label %158

158:                                              ; preds = %155, %146
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @update_cr6(i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
