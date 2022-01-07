; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_register_grp_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_register_grp_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfar_priv_grp = type { %struct.gfar_private* }
%struct.gfar_private = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@FSL_GIANFAR_DEV_HAS_MULTI_INTR = common dso_local global i32 0, align 4
@ER = common dso_local global i32 0, align 4
@gfar_error = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Can't get IRQ %d\0A\00", align 1
@TX = common dso_local global i32 0, align 4
@gfar_transmit = common dso_local global i32 0, align 4
@RX = common dso_local global i32 0, align 4
@gfar_receive = common dso_local global i32 0, align 4
@gfar_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfar_priv_grp*)* @register_grp_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_grp_irqs(%struct.gfar_priv_grp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gfar_priv_grp*, align 8
  %4 = alloca %struct.gfar_private*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  store %struct.gfar_priv_grp* %0, %struct.gfar_priv_grp** %3, align 8
  %7 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %8 = getelementptr inbounds %struct.gfar_priv_grp, %struct.gfar_priv_grp* %7, i32 0, i32 0
  %9 = load %struct.gfar_private*, %struct.gfar_private** %8, align 8
  store %struct.gfar_private* %9, %struct.gfar_private** %4, align 8
  %10 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %11 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %14 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @FSL_GIANFAR_DEV_HAS_MULTI_INTR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %110

19:                                               ; preds = %1
  %20 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %21 = load i32, i32* @ER, align 4
  %22 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %20, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @gfar_error, align 4
  %26 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %27 = load i32, i32* @ER, align 4
  %28 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %26, i32 %27)
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %32 = call i32 @request_irq(i32 %24, i32 %25, i32 0, i32 %30, %struct.gfar_priv_grp* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %19
  %36 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %37 = load i32, i32* @intr, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %40 = load i32, i32* @ER, align 4
  %41 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %39, i32 %40)
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @netif_err(%struct.gfar_private* %36, i32 %37, %struct.net_device* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %43)
  br label %160

45:                                               ; preds = %19
  %46 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %47 = load i32, i32* @ER, align 4
  %48 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %46, i32 %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @enable_irq_wake(i32 %50)
  %52 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %53 = load i32, i32* @TX, align 4
  %54 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %52, i32 %53)
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @gfar_transmit, align 4
  %58 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %59 = load i32, i32* @TX, align 4
  %60 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %58, i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %64 = call i32 @request_irq(i32 %56, i32 %57, i32 0, i32 %62, %struct.gfar_priv_grp* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %45
  %68 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %69 = load i32, i32* @intr, align 4
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %72 = load i32, i32* @TX, align 4
  %73 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %71, i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @netif_err(%struct.gfar_private* %68, i32 %69, %struct.net_device* %70, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %152

77:                                               ; preds = %45
  %78 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %79 = load i32, i32* @RX, align 4
  %80 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %78, i32 %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @gfar_receive, align 4
  %84 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %85 = load i32, i32* @RX, align 4
  %86 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %84, i32 %85)
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %90 = call i32 @request_irq(i32 %82, i32 %83, i32 0, i32 %88, %struct.gfar_priv_grp* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %77
  %94 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %95 = load i32, i32* @intr, align 4
  %96 = load %struct.net_device*, %struct.net_device** %5, align 8
  %97 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %98 = load i32, i32* @RX, align 4
  %99 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %97, i32 %98)
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @netif_err(%struct.gfar_private* %94, i32 %95, %struct.net_device* %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %144

103:                                              ; preds = %77
  %104 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %105 = load i32, i32* @RX, align 4
  %106 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %104, i32 %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @enable_irq_wake(i32 %108)
  br label %143

110:                                              ; preds = %1
  %111 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %112 = load i32, i32* @TX, align 4
  %113 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %111, i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @gfar_interrupt, align 4
  %117 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %118 = load i32, i32* @TX, align 4
  %119 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %117, i32 %118)
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %123 = call i32 @request_irq(i32 %115, i32 %116, i32 0, i32 %121, %struct.gfar_priv_grp* %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %6, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %110
  %127 = load %struct.gfar_private*, %struct.gfar_private** %4, align 8
  %128 = load i32, i32* @intr, align 4
  %129 = load %struct.net_device*, %struct.net_device** %5, align 8
  %130 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %131 = load i32, i32* @TX, align 4
  %132 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %130, i32 %131)
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @netif_err(%struct.gfar_private* %127, i32 %128, %struct.net_device* %129, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %134)
  br label %160

136:                                              ; preds = %110
  %137 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %138 = load i32, i32* @TX, align 4
  %139 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %137, i32 %138)
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @enable_irq_wake(i32 %141)
  br label %143

143:                                              ; preds = %136, %103
  store i32 0, i32* %2, align 4
  br label %162

144:                                              ; preds = %93
  %145 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %146 = load i32, i32* @TX, align 4
  %147 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %145, i32 %146)
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %151 = call i32 @free_irq(i32 %149, %struct.gfar_priv_grp* %150)
  br label %152

152:                                              ; preds = %144, %67
  %153 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %154 = load i32, i32* @ER, align 4
  %155 = call %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp* %153, i32 %154)
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.gfar_priv_grp*, %struct.gfar_priv_grp** %3, align 8
  %159 = call i32 @free_irq(i32 %157, %struct.gfar_priv_grp* %158)
  br label %160

160:                                              ; preds = %152, %126, %35
  %161 = load i32, i32* %6, align 4
  store i32 %161, i32* %2, align 4
  br label %162

162:                                              ; preds = %160, %143
  %163 = load i32, i32* %2, align 4
  ret i32 %163
}

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.gfar_priv_grp*) #1

declare dso_local %struct.TYPE_2__* @gfar_irq(%struct.gfar_priv_grp*, i32) #1

declare dso_local i32 @netif_err(%struct.gfar_private*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @enable_irq_wake(i32) #1

declare dso_local i32 @free_irq(i32, %struct.gfar_priv_grp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
