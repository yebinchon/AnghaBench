; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_eeprom_claim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_eeprom_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8851_net = type { i32, i32 }

@CCR_EEPROM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@KS_EEPCR = common dso_local global i32 0, align 4
@EEPCR_EESA = common dso_local global i32 0, align 4
@EEPCR_EECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks8851_net*)* @ks8851_eeprom_claim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8851_eeprom_claim(%struct.ks8851_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ks8851_net*, align 8
  store %struct.ks8851_net* %0, %struct.ks8851_net** %3, align 8
  %4 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %5 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CCR_EEPROM, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOENT, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %23

13:                                               ; preds = %1
  %14 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %15 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %18 = load i32, i32* @KS_EEPCR, align 4
  %19 = load i32, i32* @EEPCR_EESA, align 4
  %20 = load i32, i32* @EEPCR_EECS, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @ks8851_wrreg16(%struct.ks8851_net* %17, i32 %18, i32 %21)
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %13, %10
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ks8851_wrreg16(%struct.ks8851_net*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
