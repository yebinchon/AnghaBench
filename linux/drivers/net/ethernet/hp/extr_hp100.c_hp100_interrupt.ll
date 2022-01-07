; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.hp100_private = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_STATUS = common dso_local global i32 0, align 4
@HP100_RX_PDL_FILL_COMPL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"hp100: %s: rx_pdl_fill_compl interrupt although not busmaster?\0A\00", align 1
@HP100_RX_PACKET = common dso_local global i32 0, align 4
@HP100_TX_ERROR = common dso_local global i32 0, align 4
@HP100_RX_ERROR = common dso_local global i32 0, align 4
@HP100_RX_PDA_ZERO = common dso_local global i32 0, align 4
@HP100_TX_COMPLETE = common dso_local global i32 0, align 4
@HP100_MISC_ERROR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@RX_PDL = common dso_local global i32 0, align 4
@RX_PKT_CNT = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@TX_PDL = common dso_local global i32 0, align 4
@TX_PKT_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @hp100_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp100_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.hp100_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %12)
  store %struct.hp100_private* %13, %struct.hp100_private** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = icmp eq %struct.net_device* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %151

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load %struct.hp100_private*, %struct.hp100_private** %7, align 8
  %23 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %22, i32 0, i32 1
  %24 = call i32 @spin_lock(i32* %23)
  %25 = call i32 (...) @hp100_ints_off()
  %26 = load i32, i32* @IRQ_STATUS, align 4
  %27 = call i32 @hp100_inw(i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.hp100_private*, %struct.hp100_private** %7, align 8
  %32 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %31, i32 0, i32 1
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = call i32 (...) @hp100_ints_on()
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %3, align 4
  br label %151

36:                                               ; preds = %18
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @HP100_RX_PDL_FILL_COMPL, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.hp100_private*, %struct.hp100_private** %7, align 8
  %43 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.net_device*, %struct.net_device** %6, align 8
  %48 = call i32 @hp100_rx_bm(%struct.net_device* %47)
  br label %54

49:                                               ; preds = %41
  %50 = load %struct.net_device*, %struct.net_device** %6, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %54

54:                                               ; preds = %49, %46
  br label %55

55:                                               ; preds = %54, %36
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @HP100_RX_PACKET, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %55
  %61 = load %struct.hp100_private*, %struct.hp100_private** %7, align 8
  %62 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.net_device*, %struct.net_device** %6, align 8
  %67 = call i32 @hp100_rx(%struct.net_device* %66)
  br label %77

68:                                               ; preds = %60
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @HP100_RX_PDL_FILL_COMPL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load %struct.net_device*, %struct.net_device** %6, align 8
  %75 = call i32 @hp100_rx_bm(%struct.net_device* %74)
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %65
  br label %78

78:                                               ; preds = %77, %55
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @IRQ_STATUS, align 4
  %81 = call i32 @hp100_outw(i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @HP100_TX_ERROR, align 4
  %84 = load i32, i32* @HP100_RX_ERROR, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %78
  %89 = load %struct.net_device*, %struct.net_device** %6, align 8
  %90 = call i32 @hp100_update_stats(%struct.net_device* %89)
  %91 = load %struct.hp100_private*, %struct.hp100_private** %7, align 8
  %92 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.net_device*, %struct.net_device** %6, align 8
  %97 = call i32 @hp100_rxfill(%struct.net_device* %96)
  %98 = load %struct.net_device*, %struct.net_device** %6, align 8
  %99 = call i32 @hp100_clean_txring(%struct.net_device* %98)
  br label %100

100:                                              ; preds = %95, %88
  br label %101

101:                                              ; preds = %100, %78
  %102 = load %struct.hp100_private*, %struct.hp100_private** %7, align 8
  %103 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %114

106:                                              ; preds = %101
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* @HP100_RX_PDA_ZERO, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load %struct.net_device*, %struct.net_device** %6, align 8
  %113 = call i32 @hp100_rxfill(%struct.net_device* %112)
  br label %114

114:                                              ; preds = %111, %106, %101
  %115 = load %struct.hp100_private*, %struct.hp100_private** %7, align 8
  %116 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %119, label %127

119:                                              ; preds = %114
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @HP100_TX_COMPLETE, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %119
  %125 = load %struct.net_device*, %struct.net_device** %6, align 8
  %126 = call i32 @hp100_clean_txring(%struct.net_device* %125)
  br label %127

127:                                              ; preds = %124, %119, %114
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* @HP100_MISC_ERROR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %127
  %133 = load %struct.hp100_private*, %struct.hp100_private** %7, align 8
  %134 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 1
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.net_device*, %struct.net_device** %6, align 8
  %139 = call i32 @hp100_clean_txring(%struct.net_device* %138)
  %140 = load %struct.net_device*, %struct.net_device** %6, align 8
  %141 = call i32 @hp100_rxfill(%struct.net_device* %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.net_device*, %struct.net_device** %6, align 8
  %144 = call i32 @hp100_misc_interrupt(%struct.net_device* %143)
  br label %145

145:                                              ; preds = %142, %127
  %146 = load %struct.hp100_private*, %struct.hp100_private** %7, align 8
  %147 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %146, i32 0, i32 1
  %148 = call i32 @spin_unlock(i32* %147)
  %149 = call i32 (...) @hp100_ints_on()
  %150 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %145, %30, %16
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hp100_ints_off(...) #1

declare dso_local i32 @hp100_inw(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @hp100_ints_on(...) #1

declare dso_local i32 @hp100_rx_bm(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @hp100_rx(%struct.net_device*) #1

declare dso_local i32 @hp100_outw(i32, i32) #1

declare dso_local i32 @hp100_update_stats(%struct.net_device*) #1

declare dso_local i32 @hp100_rxfill(%struct.net_device*) #1

declare dso_local i32 @hp100_clean_txring(%struct.net_device*) #1

declare dso_local i32 @hp100_misc_interrupt(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
