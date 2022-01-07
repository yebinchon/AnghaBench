; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/cc770/extr_cc770.c_cc770_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.cc770_priv = type { i32 }
%struct.can_frame = type { i32, i32, i32* }
%struct.sk_buff = type { i32 }

@msgobj = common dso_local global %struct.TYPE_2__* null, align 8
@RMTPND_SET = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@MSGCFG_XTD = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @cc770_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cc770_rx(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cc770_priv*, align 8
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca %struct.can_frame*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.cc770_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.cc770_priv* %15, %struct.cc770_priv** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store %struct.net_device_stats* %17, %struct.net_device_stats** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %18, %struct.can_frame** %9)
  store %struct.sk_buff* %19, %struct.sk_buff** %10, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %192

23:                                               ; preds = %3
  %24 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @cc770_read_reg(%struct.cc770_priv* %24, i32 %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @RMTPND_SET, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %23
  %37 = load i32, i32* @CAN_RTR_FLAG, align 4
  %38 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %39 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @MSGCFG_XTD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @CAN_EFF_FLAG, align 4
  %46 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %47 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 8
  br label %50

50:                                               ; preds = %44, %36
  %51 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %52 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %51, i32 0, i32 1
  store i32 0, i32* %52, align 4
  br label %178

53:                                               ; preds = %23
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @MSGCFG_XTD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %113

58:                                               ; preds = %53
  %59 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @cc770_read_reg(%struct.cc770_priv* %59, i32 %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cc770_read_reg(%struct.cc770_priv* %69, i32 %77)
  %79 = shl i32 %78, 8
  %80 = load i32, i32* %12, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %12, align 4
  %82 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @cc770_read_reg(%struct.cc770_priv* %82, i32 %90)
  %92 = shl i32 %91, 16
  %93 = load i32, i32* %12, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %12, align 4
  %95 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %97 = load i32, i32* %5, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @cc770_read_reg(%struct.cc770_priv* %95, i32 %103)
  %105 = shl i32 %104, 24
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = ashr i32 %108, 3
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* @CAN_EFF_FLAG, align 4
  %111 = load i32, i32* %12, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %12, align 4
  br label %139

113:                                              ; preds = %53
  %114 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %116 = load i32, i32* %5, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @cc770_read_reg(%struct.cc770_priv* %114, i32 %122)
  store i32 %123, i32* %12, align 4
  %124 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %126 = load i32, i32* %5, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @cc770_read_reg(%struct.cc770_priv* %124, i32 %132)
  %134 = shl i32 %133, 8
  %135 = load i32, i32* %12, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = ashr i32 %137, 5
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %113, %58
  %140 = load i32, i32* %12, align 4
  %141 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %142 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %11, align 4
  %144 = and i32 %143, 240
  %145 = ashr i32 %144, 4
  %146 = call i32 @get_can_dlc(i32 %145)
  %147 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %148 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %147, i32 0, i32 1
  store i32 %146, i32* %148, align 4
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %174, %139
  %150 = load i32, i32* %13, align 4
  %151 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %152 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %177

155:                                              ; preds = %149
  %156 = load %struct.cc770_priv*, %struct.cc770_priv** %7, align 8
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** @msgobj, align 8
  %158 = load i32, i32* %5, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* %13, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %162, i64 %164
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @cc770_read_reg(%struct.cc770_priv* %156, i32 %166)
  %168 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %169 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %168, i32 0, i32 2
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  store i32 %167, i32* %173, align 4
  br label %174

174:                                              ; preds = %155
  %175 = load i32, i32* %13, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %149

177:                                              ; preds = %149
  br label %178

178:                                              ; preds = %177, %50
  %179 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %180 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %180, align 4
  %183 = load %struct.can_frame*, %struct.can_frame** %9, align 8
  %184 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %187 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, %185
  store i32 %189, i32* %187, align 4
  %190 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %191 = call i32 @netif_rx(%struct.sk_buff* %190)
  br label %192

192:                                              ; preds = %178, %22
  ret void
}

declare dso_local %struct.cc770_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @cc770_read_reg(%struct.cc770_priv*, i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
