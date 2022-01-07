; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_mii_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_mii_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tlan_priv = type { i32 }

@TLAN_NET_SIO = common dso_local global i32 0, align 4
@TLAN_DIO_ADR = common dso_local global i32 0, align 4
@TLAN_DIO_DATA = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MINTEN = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MTXEN = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MCLK = common dso_local global i32 0, align 4
@TLAN_NET_SIO_MDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32*)* @tlan_mii_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlan_mii_read_reg(%struct.net_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tlan_priv*, align 8
  %16 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %17)
  store %struct.tlan_priv* %18, %struct.tlan_priv** %15, align 8
  store i64 0, i64* %16, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* @TLAN_NET_SIO, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TLAN_DIO_ADR, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @outw(i32 %19, i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TLAN_DIO_DATA, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @TLAN_NET_SIO, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  %33 = call i32 (...) @in_irq()
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %4
  %36 = load %struct.tlan_priv*, %struct.tlan_priv** %15, align 8
  %37 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %36, i32 0, i32 0
  %38 = load i64, i64* %16, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %4
  %41 = load %struct.net_device*, %struct.net_device** %5, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @tlan_mii_sync(i32 %43)
  %45 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @tlan_get_bit(i32 %45, i32 %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @tlan_clear_bit(i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %40
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @tlan_mii_send_data(i32 %57, i32 1, i32 2)
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @tlan_mii_send_data(i32 %61, i32 2, i32 2)
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @tlan_mii_send_data(i32 %65, i32 %66, i32 5)
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @tlan_mii_send_data(i32 %70, i32 %71, i32 5)
  %73 = load i32, i32* @TLAN_NET_SIO_MTXEN, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @tlan_clear_bit(i32 %73, i32 %74)
  %76 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @tlan_clear_bit(i32 %76, i32 %77)
  %79 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @tlan_set_bit(i32 %79, i32 %80)
  %82 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @tlan_clear_bit(i32 %82, i32 %83)
  %85 = load i32, i32* @TLAN_NET_SIO_MDATA, align 4
  %86 = load i32, i32* %10, align 4
  %87 = call i32 @tlan_get_bit(i32 %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @tlan_set_bit(i32 %88, i32 %89)
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %54
  store i32 0, i32* %12, align 4
  br label %94

94:                                               ; preds = %104, %93
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 16
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @tlan_clear_bit(i32 %98, i32 %99)
  %101 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %102 = load i32, i32* %10, align 4
  %103 = call i32 @tlan_set_bit(i32 %101, i32 %102)
  br label %104

104:                                              ; preds = %97
  %105 = load i32, i32* %12, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %12, align 4
  br label %94

107:                                              ; preds = %94
  store i32 65535, i32* %11, align 4
  store i32 1, i32* %13, align 4
  br label %132

108:                                              ; preds = %54
  store i32 0, i32* %11, align 4
  store i32 32768, i32* %12, align 4
  br label %109

109:                                              ; preds = %128, %108
  %110 = load i32, i32* %12, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %131

112:                                              ; preds = %109
  %113 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @tlan_clear_bit(i32 %113, i32 %114)
  %116 = load i32, i32* @TLAN_NET_SIO_MDATA, align 4
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @tlan_get_bit(i32 %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %11, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %120, %112
  %125 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @tlan_set_bit(i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %124
  %129 = load i32, i32* %12, align 4
  %130 = ashr i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %109

131:                                              ; preds = %109
  br label %132

132:                                              ; preds = %131, %107
  %133 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %134 = load i32, i32* %10, align 4
  %135 = call i32 @tlan_clear_bit(i32 %133, i32 %134)
  %136 = load i32, i32* @TLAN_NET_SIO_MCLK, align 4
  %137 = load i32, i32* %10, align 4
  %138 = call i32 @tlan_set_bit(i32 %136, i32 %137)
  %139 = load i32, i32* %14, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %132
  %142 = load i32, i32* @TLAN_NET_SIO_MINTEN, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @tlan_set_bit(i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %132
  %146 = load i32, i32* %11, align 4
  %147 = load i32*, i32** %8, align 8
  store i32 %146, i32* %147, align 4
  %148 = call i32 (...) @in_irq()
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %145
  %151 = load %struct.tlan_priv*, %struct.tlan_priv** %15, align 8
  %152 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %151, i32 0, i32 0
  %153 = load i64, i64* %16, align 8
  %154 = call i32 @spin_unlock_irqrestore(i32* %152, i64 %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = load i32, i32* %13, align 4
  ret i32 %156
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @outw(i32, i32) #1

declare dso_local i32 @in_irq(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tlan_mii_sync(i32) #1

declare dso_local i32 @tlan_get_bit(i32, i32) #1

declare dso_local i32 @tlan_clear_bit(i32, i32) #1

declare dso_local i32 @tlan_mii_send_data(i32, i32, i32) #1

declare dso_local i32 @tlan_set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
