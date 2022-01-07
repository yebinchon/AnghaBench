; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_setup_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_ns83820.c_ns83820_setup_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ns83820 = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i32, i32, i64 }

@.str = private unnamed_addr constant [22 x i8] c"ns83820_setup_rx(%p)\0A\00", align 1
@NR_RX_DESC = common dso_local global i32 0, align 4
@RXDP_HI = common dso_local global i64 0, align 8
@RXDP = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"starting receiver\0A\00", align 1
@CCSR = common dso_local global i64 0, align 8
@RFCR = common dso_local global i64 0, align 8
@ISR_PHY = common dso_local global i32 0, align 4
@ISR_RXRCMP = common dso_local global i32 0, align 4
@ISR_RXORN = common dso_local global i32 0, align 4
@ISR_RXSOVR = common dso_local global i32 0, align 4
@ISR_RXDESC = common dso_local global i32 0, align 4
@ISR_RXIDLE = common dso_local global i32 0, align 4
@ISR_TXDESC = common dso_local global i32 0, align 4
@ISR_TXIDLE = common dso_local global i32 0, align 4
@IMR = common dso_local global i64 0, align 8
@IER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ns83820_setup_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns83820_setup_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ns83820*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.ns83820* @PRIV(%struct.net_device* %6)
  store %struct.ns83820* %7, %struct.ns83820** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.net_device* %8)
  %10 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %11 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %14 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %17 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %21 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 6
  store i32 %19, i32* %22, align 4
  %23 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %24 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %34, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @NR_RX_DESC, align 4
  %29 = icmp ult i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @clear_rx_desc(%struct.ns83820* %31, i32 %32)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %4, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %4, align 4
  br label %26

37:                                               ; preds = %26
  %38 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %39 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @RXDP_HI, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 0, i64 %42)
  %44 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %45 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %49 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @RXDP, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @writel(i32 %47, i64 %52)
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i32 @rx_refill(%struct.net_device* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %161, label %59

59:                                               ; preds = %37
  %60 = call i32 (i8*, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %62 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = call i32 @spin_lock_irq(i32* %63)
  %65 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %66 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @CCSR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 1, i64 %69)
  %71 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %72 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RFCR, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel(i32 0, i64 %75)
  %77 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %78 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %77, i32 0, i32 3
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @RFCR, align 8
  %81 = add nsw i64 %79, %80
  %82 = call i32 @writel(i32 2143289344, i64 %81)
  %83 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %84 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @RFCR, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @writel(i32 -4194304, i64 %87)
  %89 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %90 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 1, i32* %91, align 8
  %92 = load %struct.net_device*, %struct.net_device** %2, align 8
  %93 = call i32 @phy_intr(%struct.net_device* %92)
  %94 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %95 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %94, i32 0, i32 2
  %96 = call i32 @spin_lock(i32* %95)
  %97 = load i32, i32* @ISR_PHY, align 4
  %98 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %99 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load i32, i32* @ISR_RXRCMP, align 4
  %103 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %104 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* @ISR_RXORN, align 4
  %108 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %109 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* @ISR_RXSOVR, align 4
  %113 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %114 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @ISR_RXDESC, align 4
  %118 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %119 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 8
  %122 = load i32, i32* @ISR_RXIDLE, align 4
  %123 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %124 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* @ISR_TXDESC, align 4
  %128 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %129 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* @ISR_TXIDLE, align 4
  %133 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %134 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %138 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %141 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %140, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @IMR, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @writel(i32 %139, i64 %144)
  %146 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %147 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @IER, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @writel(i32 1, i64 %150)
  %152 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %153 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %152, i32 0, i32 2
  %154 = call i32 @spin_unlock(i32* %153)
  %155 = load %struct.net_device*, %struct.net_device** %2, align 8
  %156 = call i32 @kick_rx(%struct.net_device* %155)
  %157 = load %struct.ns83820*, %struct.ns83820** %3, align 8
  %158 = getelementptr inbounds %struct.ns83820, %struct.ns83820* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  %160 = call i32 @spin_unlock_irq(i32* %159)
  br label %161

161:                                              ; preds = %59, %37
  %162 = load i32, i32* %5, align 4
  ret i32 %162
}

declare dso_local %struct.ns83820* @PRIV(%struct.net_device*) #1

declare dso_local i32 @dprintk(i8*, ...) #1

declare dso_local i32 @clear_rx_desc(%struct.ns83820*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @rx_refill(%struct.net_device*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @phy_intr(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kick_rx(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
