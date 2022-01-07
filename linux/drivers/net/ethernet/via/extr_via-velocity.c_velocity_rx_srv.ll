; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_rx_srv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_rx_srv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.velocity_info = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__*, %struct.rx_desc* }
%struct.TYPE_7__ = type { i32 }
%struct.rx_desc = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }

@OWNED_BY_NIC = common dso_local global i32 0, align 4
@RSR_RXOK = common dso_local global i32 0, align 4
@RSR_CE = common dso_local global i32 0, align 4
@RSR_RL = common dso_local global i32 0, align 4
@RSR_CRC = common dso_local global i32 0, align 4
@RSR_FAE = common dso_local global i32 0, align 4
@RX_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.velocity_info*, i32)* @velocity_rx_srv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_rx_srv(%struct.velocity_info* %0, i32 %1) #0 {
  %3 = alloca %struct.velocity_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rx_desc*, align 8
  store %struct.velocity_info* %0, %struct.velocity_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %10 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.net_device_stats* %12, %struct.net_device_stats** %5, align 8
  %13 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %14 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %119, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %122

21:                                               ; preds = %17
  %22 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %23 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 2
  %25 = load %struct.rx_desc*, %struct.rx_desc** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %25, i64 %27
  store %struct.rx_desc* %28, %struct.rx_desc** %8, align 8
  %29 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %30 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %21
  br label %122

40:                                               ; preds = %21
  %41 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %42 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OWNED_BY_NIC, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %122

49:                                               ; preds = %40
  %50 = call i32 (...) @rmb()
  %51 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %52 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RSR_RXOK, align 4
  %56 = load i32, i32* @RSR_CE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @RSR_RL, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %54, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %49
  %63 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @velocity_receive_frame(%struct.velocity_info* %63, i32 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %69 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %62
  br label %104

73:                                               ; preds = %49
  %74 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %75 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @RSR_CRC, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %73
  %82 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %83 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %81, %73
  %87 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %88 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @RSR_FAE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %96 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %94, %86
  %100 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %101 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %72
  %105 = load i32, i32* @RX_INTEN, align 4
  %106 = load %struct.rx_desc*, %struct.rx_desc** %8, align 8
  %107 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %105
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %6, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %6, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %114 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 %112, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %104
  store i32 0, i32* %6, align 4
  br label %119

119:                                              ; preds = %118, %104
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %17

122:                                              ; preds = %48, %39, %17
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %125 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i32 %123, i32* %126, align 8
  %127 = load i32, i32* %7, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %122
  %130 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %131 = call i64 @velocity_rx_refill(%struct.velocity_info* %130)
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load %struct.velocity_info*, %struct.velocity_info** %3, align 8
  %135 = call i32 @velocity_give_many_rx_descs(%struct.velocity_info* %134)
  br label %136

136:                                              ; preds = %133, %129, %122
  %137 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %138 = call i32 @VAR_USED(%struct.net_device_stats* %137)
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @velocity_receive_frame(%struct.velocity_info*, i32) #1

declare dso_local i64 @velocity_rx_refill(%struct.velocity_info*) #1

declare dso_local i32 @velocity_give_many_rx_descs(%struct.velocity_info*) #1

declare dso_local i32 @VAR_USED(%struct.net_device_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
