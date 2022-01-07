; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }
%struct.sh_eth_private = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@EESR_TWB = common dso_local global i32 0, align 4
@EESR_TABT = common dso_local global i32 0, align 4
@tx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Transmit Abort\0A\00", align 1
@EESR_RABT = common dso_local global i32 0, align 4
@EESR_RFRMER = common dso_local global i32 0, align 4
@EESR_TDE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Transmit Descriptor Empty\0A\00", align 1
@EESR_TFE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Transmit FIFO Under flow\0A\00", align 1
@EESR_RDE = common dso_local global i32 0, align 4
@EESR_RFE = common dso_local global i32 0, align 4
@EESR_ADE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"Address Error\0A\00", align 1
@EDTRR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [77 x i8] c"TX error. status=%8.8x cur_tx=%8.8x dirty_tx=%8.8x state=%8.8x EDTRR=%8.8x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32)* @sh_eth_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_error(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sh_eth_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %8)
  store %struct.sh_eth_private* %9, %struct.sh_eth_private** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @EESR_TWB, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @EESR_TABT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %26 = load i32, i32* @tx_err, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_err(%struct.sh_eth_private* %25, i32 %26, %struct.net_device* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %19, %14
  br label %30

30:                                               ; preds = %29, %2
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @EESR_RABT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @EESR_RFRMER, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %40, %35
  br label %47

47:                                               ; preds = %46, %30
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @EESR_TDE, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  %58 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %59 = load i32, i32* @tx_err, align 4
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 @netif_err(%struct.sh_eth_private* %58, i32 %59, %struct.net_device* %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %62

62:                                               ; preds = %52, %47
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @EESR_TFE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  %73 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %74 = load i32, i32* @tx_err, align 4
  %75 = load %struct.net_device*, %struct.net_device** %3, align 8
  %76 = call i32 @netif_err(%struct.sh_eth_private* %73, i32 %74, %struct.net_device* %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %77

77:                                               ; preds = %67, %62
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @EESR_RDE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @EESR_RFE, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load %struct.net_device*, %struct.net_device** %3, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %88
  %100 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %101 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %100, i32 0, i32 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %121, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @EESR_ADE, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %106
  %112 = load %struct.net_device*, %struct.net_device** %3, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 8
  %117 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %118 = load i32, i32* @tx_err, align 4
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = call i32 @netif_err(%struct.sh_eth_private* %117, i32 %118, %struct.net_device* %119, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %111, %106, %99
  %122 = load i32, i32* @EESR_TWB, align 4
  %123 = load i32, i32* @EESR_TABT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @EESR_ADE, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @EESR_TDE, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @EESR_TFE, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %6, align 4
  %131 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %132 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %131, i32 0, i32 0
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %121
  %138 = load i32, i32* @EESR_ADE, align 4
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %6, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %137, %121
  %143 = load i32, i32* %4, align 4
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %187

147:                                              ; preds = %142
  %148 = load %struct.net_device*, %struct.net_device** %3, align 8
  %149 = load i32, i32* @EDTRR, align 4
  %150 = call i32 @sh_eth_read(%struct.net_device* %148, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = load %struct.net_device*, %struct.net_device** %3, align 8
  %152 = load i32, i32* %4, align 4
  %153 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %154 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %157 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.net_device*, %struct.net_device** %3, align 8
  %160 = getelementptr inbounds %struct.net_device, %struct.net_device* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @netdev_err(%struct.net_device* %151, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i32 %152, i32 %155, i32 %158, i32 %162, i32 %163)
  %165 = load %struct.net_device*, %struct.net_device** %3, align 8
  %166 = call i32 @sh_eth_tx_free(%struct.net_device* %165, i32 1)
  %167 = load i32, i32* %7, align 4
  %168 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %169 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %168, i32 0, i32 0
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = xor i32 %167, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %147
  %176 = load %struct.net_device*, %struct.net_device** %3, align 8
  %177 = load %struct.sh_eth_private*, %struct.sh_eth_private** %5, align 8
  %178 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %177, i32 0, i32 0
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @EDTRR, align 4
  %183 = call i32 @sh_eth_write(%struct.net_device* %176, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %175, %147
  %185 = load %struct.net_device*, %struct.net_device** %3, align 8
  %186 = call i32 @netif_wake_queue(%struct.net_device* %185)
  br label %187

187:                                              ; preds = %184, %142
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.sh_eth_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @sh_eth_read(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sh_eth_tx_free(%struct.net_device*, i32) #1

declare dso_local i32 @sh_eth_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
