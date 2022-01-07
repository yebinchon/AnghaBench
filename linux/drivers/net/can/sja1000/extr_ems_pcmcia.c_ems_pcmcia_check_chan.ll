; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pcmcia.c_ems_pcmcia_check_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pcmcia.c_ems_pcmcia_check_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { i32 }

@SJA1000_MOD = common dso_local global i32 0, align 4
@SJA1000_CDR = common dso_local global i32 0, align 4
@CDR_PELICAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sja1000_priv*)* @ems_pcmcia_check_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ems_pcmcia_check_chan(%struct.sja1000_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sja1000_priv*, align 8
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %3, align 8
  %4 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %5 = load i32, i32* @SJA1000_MOD, align 4
  %6 = call i32 @ems_pcmcia_write_reg(%struct.sja1000_priv* %4, i32 %5, i32 1)
  %7 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %8 = load i32, i32* @SJA1000_CDR, align 4
  %9 = load i32, i32* @CDR_PELICAN, align 4
  %10 = call i32 @ems_pcmcia_write_reg(%struct.sja1000_priv* %7, i32 %8, i32 %9)
  %11 = load %struct.sja1000_priv*, %struct.sja1000_priv** %3, align 8
  %12 = load i32, i32* @SJA1000_CDR, align 4
  %13 = call i32 @ems_pcmcia_read_reg(%struct.sja1000_priv* %11, i32 %12)
  %14 = load i32, i32* @CDR_PELICAN, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @ems_pcmcia_write_reg(%struct.sja1000_priv*, i32, i32) #1

declare dso_local i32 @ems_pcmcia_read_reg(%struct.sja1000_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
