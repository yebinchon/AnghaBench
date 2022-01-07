; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600-regmap.c_devm_regmap_init_encx24j600.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600-regmap.c_devm_regmap_init_encx24j600.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.encx24j600_context* }
%struct.encx24j600_context = type { i8*, i8*, i32 }
%struct.device = type { i32 }

@regcfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@regmap_encx24j600 = common dso_local global i32 0, align 4
@phymap_encx24j600 = common dso_local global i32 0, align 4
@phycfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devm_regmap_init_encx24j600(%struct.device* %0, %struct.encx24j600_context* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.encx24j600_context*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.encx24j600_context* %1, %struct.encx24j600_context** %4, align 8
  %5 = load %struct.encx24j600_context*, %struct.encx24j600_context** %4, align 8
  %6 = getelementptr inbounds %struct.encx24j600_context, %struct.encx24j600_context* %5, i32 0, i32 2
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.encx24j600_context*, %struct.encx24j600_context** %4, align 8
  store %struct.encx24j600_context* %8, %struct.encx24j600_context** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @regcfg, i32 0, i32 0), align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load %struct.encx24j600_context*, %struct.encx24j600_context** %4, align 8
  %11 = call i8* @devm_regmap_init(%struct.device* %9, i32* @regmap_encx24j600, %struct.encx24j600_context* %10, %struct.TYPE_4__* @regcfg)
  %12 = load %struct.encx24j600_context*, %struct.encx24j600_context** %4, align 8
  %13 = getelementptr inbounds %struct.encx24j600_context, %struct.encx24j600_context* %12, i32 0, i32 1
  store i8* %11, i8** %13, align 8
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = load %struct.encx24j600_context*, %struct.encx24j600_context** %4, align 8
  %16 = call i8* @devm_regmap_init(%struct.device* %14, i32* @phymap_encx24j600, %struct.encx24j600_context* %15, %struct.TYPE_4__* @phycfg)
  %17 = load %struct.encx24j600_context*, %struct.encx24j600_context** %4, align 8
  %18 = getelementptr inbounds %struct.encx24j600_context, %struct.encx24j600_context* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i8* @devm_regmap_init(%struct.device*, i32*, %struct.encx24j600_context*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
