; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c509.c_el3_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32* }

@WN0_IRQ = common dso_local global i32 0, align 4
@StartCoax = common dso_local global i32 0, align 4
@EL3_CMD = common dso_local global i32 0, align 4
@WN4_NETDIAG = common dso_local global i32 0, align 4
@FD_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Forcing 3c5x9b full-duplex mode\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"Setting 3c5x9b full-duplex mode (from EEPROM configuration bit)\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Setting 3c5x9/3c5x9B half-duplex mode\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c" if_port: %d, sw_info: %4.4x\0A\00", align 1
@el3_debug = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"%s: 3c5x9 net diag word is now: %4.4x.\0A\00", align 1
@WN4_MEDIA = common dso_local global i32 0, align 4
@MEDIA_TP = common dso_local global i32 0, align 4
@StatsDisable = common dso_local global i32 0, align 4
@SetRxFilter = common dso_local global i32 0, align 4
@RxStation = common dso_local global i32 0, align 4
@RxBroadcast = common dso_local global i32 0, align 4
@StatsEnable = common dso_local global i32 0, align 4
@RxEnable = common dso_local global i32 0, align 4
@TxEnable = common dso_local global i32 0, align 4
@SetStatusEnb = common dso_local global i32 0, align 4
@AckIntr = common dso_local global i32 0, align 4
@IntLatch = common dso_local global i32 0, align 4
@TxAvailable = common dso_local global i32 0, align 4
@RxEarly = common dso_local global i32 0, align 4
@IntReq = common dso_local global i32 0, align 4
@SetIntrEnb = common dso_local global i32 0, align 4
@TxComplete = common dso_local global i32 0, align 4
@RxComplete = common dso_local global i32 0, align 4
@StatsFull = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @el3_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @el3_up(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = add nsw i32 %10, 4
  %12 = call i32 @outw(i32 1, i32 %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 %15, 12
  %17 = or i32 %16, 3840
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @WN0_IRQ, align 4
  %20 = add nsw i32 %18, %19
  %21 = call i32 @outw(i32 %17, i32 %20)
  %22 = call i32 @EL3WINDOW(i32 2)
  store i32 0, i32* %3, align 4
  br label %23

23:                                               ; preds = %38, %1
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %41

26:                                               ; preds = %23
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %34, %35
  %37 = call i32 @outb(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %26
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %23

41:                                               ; preds = %23
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = and i32 %44, 3
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load i32, i32* @StartCoax, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @EL3_CMD, align 4
  %51 = add nsw i32 %49, %50
  %52 = call i32 @outw(i32 %48, i32 %51)
  br label %139

53:                                               ; preds = %41
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, 3
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %138

59:                                               ; preds = %53
  %60 = call i32 @EL3WINDOW(i32 0)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @read_eeprom(i32 %61, i32 20)
  %63 = and i32 %62, 16399
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @read_eeprom(i32 %64, i32 13)
  %66 = and i32 %65, 49136
  %67 = or i32 %63, %66
  store i32 %67, i32* %4, align 4
  %68 = call i32 @EL3WINDOW(i32 4)
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @WN4_NETDIAG, align 4
  %71 = add nsw i32 %69, %70
  %72 = call i32 @inw(i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* @FD_ENABLE, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %5, align 4
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @pr_info(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = and i32 %82, 12
  switch i32 %83, label %102 [
    i32 12, label %84
    i32 8, label %91
  ]

84:                                               ; preds = %59
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, 15
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %108

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %59, %90
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, 15
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load i32, i32* %4, align 4
  %97 = and i32 %96, 32768
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0))
  br label %108

101:                                              ; preds = %95, %91
  br label %102

102:                                              ; preds = %59, %101
  %103 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @FD_ENABLE, align 4
  %106 = xor i32 %105, -1
  %107 = and i32 %104, %106
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %102, %99, %88
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @WN4_NETDIAG, align 4
  %112 = add nsw i32 %110, %111
  %113 = call i32 @outw(i32 %109, i32 %112)
  %114 = load %struct.net_device*, %struct.net_device** %2, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %116, i32 %117)
  %119 = load i32, i32* @el3_debug, align 4
  %120 = icmp sgt i32 %119, 3
  br i1 %120, label %121, label %127

121:                                              ; preds = %108
  %122 = load %struct.net_device*, %struct.net_device** %2, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %5, align 4
  %126 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %121, %108
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @WN4_MEDIA, align 4
  %130 = add nsw i32 %128, %129
  %131 = call i32 @inw(i32 %130)
  %132 = load i32, i32* @MEDIA_TP, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* @WN4_MEDIA, align 4
  %136 = add nsw i32 %134, %135
  %137 = call i32 @outw(i32 %133, i32 %136)
  br label %138

138:                                              ; preds = %127, %53
  br label %139

139:                                              ; preds = %138, %47
  %140 = load i32, i32* @StatsDisable, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @EL3_CMD, align 4
  %143 = add nsw i32 %141, %142
  %144 = call i32 @outw(i32 %140, i32 %143)
  %145 = call i32 @EL3WINDOW(i32 6)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %154, %139
  %147 = load i32, i32* %3, align 4
  %148 = icmp slt i32 %147, 9
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %150, %151
  %153 = call i32 @inb(i32 %152)
  br label %154

154:                                              ; preds = %149
  %155 = load i32, i32* %3, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %3, align 4
  br label %146

157:                                              ; preds = %146
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 10
  %160 = call i32 @inw(i32 %159)
  %161 = load i32, i32* %6, align 4
  %162 = add nsw i32 %161, 12
  %163 = call i32 @inw(i32 %162)
  %164 = call i32 @EL3WINDOW(i32 1)
  %165 = load i32, i32* @SetRxFilter, align 4
  %166 = load i32, i32* @RxStation, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @RxBroadcast, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @EL3_CMD, align 4
  %172 = add nsw i32 %170, %171
  %173 = call i32 @outw(i32 %169, i32 %172)
  %174 = load i32, i32* @StatsEnable, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @EL3_CMD, align 4
  %177 = add nsw i32 %175, %176
  %178 = call i32 @outw(i32 %174, i32 %177)
  %179 = load i32, i32* @RxEnable, align 4
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* @EL3_CMD, align 4
  %182 = add nsw i32 %180, %181
  %183 = call i32 @outw(i32 %179, i32 %182)
  %184 = load i32, i32* @TxEnable, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @EL3_CMD, align 4
  %187 = add nsw i32 %185, %186
  %188 = call i32 @outw(i32 %184, i32 %187)
  %189 = load i32, i32* @SetStatusEnb, align 4
  %190 = or i32 %189, 255
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* @EL3_CMD, align 4
  %193 = add nsw i32 %191, %192
  %194 = call i32 @outw(i32 %190, i32 %193)
  %195 = load i32, i32* @AckIntr, align 4
  %196 = load i32, i32* @IntLatch, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @TxAvailable, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @RxEarly, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @IntReq, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* %6, align 4
  %205 = load i32, i32* @EL3_CMD, align 4
  %206 = add nsw i32 %204, %205
  %207 = call i32 @outw(i32 %203, i32 %206)
  %208 = load i32, i32* @SetIntrEnb, align 4
  %209 = load i32, i32* @IntLatch, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @TxAvailable, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @TxComplete, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @RxComplete, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* @StatsFull, align 4
  %218 = or i32 %216, %217
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @EL3_CMD, align 4
  %221 = add nsw i32 %219, %220
  %222 = call i32 @outw(i32 %218, i32 %221)
  %223 = load %struct.net_device*, %struct.net_device** %2, align 8
  %224 = call i32 @netif_start_queue(%struct.net_device* %223)
  ret void
}

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @read_eeprom(i32, i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
