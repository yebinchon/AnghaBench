; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ravb_private = type { i64, i64, i64, %struct.TYPE_3__*, i32, %struct.napi_struct* }
%struct.TYPE_3__ = type { i64 }

@TIS = common dso_local global i32 0, align 4
@RIS0 = common dso_local global i32 0, align 4
@RIS0_RESERVED = common dso_local global i32 0, align 4
@TIS_RESERVED = common dso_local global i32 0, align 4
@RCAR_GEN2 = common dso_local global i64 0, align 8
@RIC0 = common dso_local global i32 0, align 4
@TIC = common dso_local global i32 0, align 4
@RIE0 = common dso_local global i32 0, align 4
@TIE = common dso_local global i32 0, align 4
@RAVB_BE = common dso_local global i64 0, align 8
@RAVB_NC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @ravb_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ravb_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ravb_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %14 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %13, i32 0, i32 0
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %16)
  store %struct.ravb_private* %17, %struct.ravb_private** %6, align 8
  %18 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %19 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %20 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %19, i32 0, i32 5
  %21 = load %struct.napi_struct*, %struct.napi_struct** %20, align 8
  %22 = ptrtoint %struct.napi_struct* %18 to i64
  %23 = ptrtoint %struct.napi_struct* %21 to i64
  %24 = sub i64 %22, %23
  %25 = sdiv exact i64 %24, 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @BIT(i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %93, %2
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = load i32, i32* @TIS, align 4
  %33 = call i32 @ravb_read(%struct.net_device* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load i32, i32* @RIS0, align 4
  %36 = call i32 @ravb_read(%struct.net_device* %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  br label %94

47:                                               ; preds = %41, %30
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %9, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %66

52:                                               ; preds = %47
  %53 = load %struct.net_device*, %struct.net_device** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @RIS0_RESERVED, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load i32, i32* @RIS0, align 4
  %59 = call i32 @ravb_write(%struct.net_device* %53, i32 %57, i32 %58)
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @ravb_rx(%struct.net_device* %60, i32* %10, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %52
  br label %183

65:                                               ; preds = %52
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %66
  %72 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %73 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %72, i32 0, i32 4
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @TIS_RESERVED, align 4
  %79 = or i32 %77, %78
  %80 = xor i32 %79, -1
  %81 = load i32, i32* @TIS, align 4
  %82 = call i32 @ravb_write(%struct.net_device* %76, i32 %80, i32 %81)
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @ravb_tx_free(%struct.net_device* %83, i32 %84, i32 1)
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @netif_wake_subqueue(%struct.net_device* %86, i32 %87)
  %89 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %90 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %89, i32 0, i32 4
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  br label %93

93:                                               ; preds = %71, %66
  br label %30

94:                                               ; preds = %46
  %95 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %96 = call i32 @napi_complete(%struct.napi_struct* %95)
  %97 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %98 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %97, i32 0, i32 4
  %99 = load i64, i64* %7, align 8
  %100 = call i32 @spin_lock_irqsave(i32* %98, i64 %99)
  %101 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %102 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @RCAR_GEN2, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %94
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = load i32, i32* @RIC0, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @ravb_modify(%struct.net_device* %107, i32 %108, i32 %109, i32 %110)
  %112 = load %struct.net_device*, %struct.net_device** %5, align 8
  %113 = load i32, i32* @TIC, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @ravb_modify(%struct.net_device* %112, i32 %113, i32 %114, i32 %115)
  br label %126

117:                                              ; preds = %94
  %118 = load %struct.net_device*, %struct.net_device** %5, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* @RIE0, align 4
  %121 = call i32 @ravb_write(%struct.net_device* %118, i32 %119, i32 %120)
  %122 = load %struct.net_device*, %struct.net_device** %5, align 8
  %123 = load i32, i32* %9, align 4
  %124 = load i32, i32* @TIE, align 4
  %125 = call i32 @ravb_write(%struct.net_device* %122, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %117, %106
  %127 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %128 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %127, i32 0, i32 4
  %129 = load i64, i64* %7, align 8
  %130 = call i32 @spin_unlock_irqrestore(i32* %128, i64 %129)
  %131 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %132 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %131, i32 0, i32 3
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = load i64, i64* @RAVB_BE, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %139 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %138, i32 0, i32 1
  store i64 %137, i64* %139, align 8
  %140 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %141 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %140, i32 0, i32 3
  %142 = load %struct.TYPE_3__*, %struct.TYPE_3__** %141, align 8
  %143 = load i64, i64* @RAVB_NC, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %148 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, %146
  store i64 %150, i64* %148, align 8
  %151 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %152 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.net_device*, %struct.net_device** %5, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %153, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %126
  %160 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %161 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.net_device*, %struct.net_device** %5, align 8
  %164 = getelementptr inbounds %struct.net_device, %struct.net_device* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  store i64 %162, i64* %165, align 8
  br label %166

166:                                              ; preds = %159, %126
  %167 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %168 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.net_device*, %struct.net_device** %5, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %169, %173
  br i1 %174, label %175, label %182

175:                                              ; preds = %166
  %176 = load %struct.ravb_private*, %struct.ravb_private** %6, align 8
  %177 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.net_device*, %struct.net_device** %5, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  store i64 %178, i64* %181, align 8
  br label %182

182:                                              ; preds = %175, %166
  br label %183

183:                                              ; preds = %182, %64
  %184 = load i32, i32* %4, align 4
  %185 = load i32, i32* %10, align 4
  %186 = sub nsw i32 %184, %185
  ret i32 %186
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ravb_read(%struct.net_device*, i32) #1

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

declare dso_local i64 @ravb_rx(%struct.net_device*, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ravb_tx_free(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netif_wake_subqueue(%struct.net_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @napi_complete(%struct.napi_struct*) #1

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
