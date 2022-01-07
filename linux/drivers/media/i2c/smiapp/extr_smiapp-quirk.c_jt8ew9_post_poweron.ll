; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_jt8ew9_post_poweron.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-quirk.c_jt8ew9_post_poweron.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smiapp_reg_8 = type { i32, i32 }
%struct.smiapp_sensor = type { i32 }

@jt8ew9_post_poweron.regs = internal constant [28 x %struct.smiapp_reg_8] [%struct.smiapp_reg_8 { i32 12451, i32 216 }, %struct.smiapp_reg_8 { i32 12462, i32 0 }, %struct.smiapp_reg_8 { i32 12463, i32 208 }, %struct.smiapp_reg_8 { i32 12845, i32 4 }, %struct.smiapp_reg_8 { i32 12885, i32 15 }, %struct.smiapp_reg_8 { i32 12886, i32 21 }, %struct.smiapp_reg_8 { i32 12888, i32 112 }, %struct.smiapp_reg_8 { i32 12889, i32 112 }, %struct.smiapp_reg_8 { i32 12895, i32 124 }, %struct.smiapp_reg_8 { i32 13058, i32 6 }, %struct.smiapp_reg_8 { i32 13060, i32 0 }, %struct.smiapp_reg_8 { i32 13063, i32 34 }, %struct.smiapp_reg_8 { i32 13064, i32 141 }, %struct.smiapp_reg_8 { i32 13086, i32 15 }, %struct.smiapp_reg_8 { i32 13088, i32 48 }, %struct.smiapp_reg_8 { i32 13089, i32 17 }, %struct.smiapp_reg_8 { i32 13090, i32 152 }, %struct.smiapp_reg_8 { i32 13091, i32 100 }, %struct.smiapp_reg_8 { i32 13093, i32 131 }, %struct.smiapp_reg_8 { i32 13104, i32 24 }, %struct.smiapp_reg_8 { i32 13116, i32 1 }, %struct.smiapp_reg_8 { i32 13125, i32 47 }, %struct.smiapp_reg_8 { i32 13278, i32 56 }, %struct.smiapp_reg_8 { i32 13024, i32 5 }, %struct.smiapp_reg_8 { i32 13025, i32 5 }, %struct.smiapp_reg_8 { i32 13026, i32 4 }, %struct.smiapp_reg_8 { i32 13029, i32 4 }, %struct.smiapp_reg_8 { i32 13030, i32 4 }], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smiapp_sensor*)* @jt8ew9_post_poweron to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jt8ew9_post_poweron(%struct.smiapp_sensor* %0) #0 {
  %2 = alloca %struct.smiapp_sensor*, align 8
  store %struct.smiapp_sensor* %0, %struct.smiapp_sensor** %2, align 8
  %3 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %2, align 8
  %4 = call i32 @ARRAY_SIZE(%struct.smiapp_reg_8* getelementptr inbounds ([28 x %struct.smiapp_reg_8], [28 x %struct.smiapp_reg_8]* @jt8ew9_post_poweron.regs, i64 0, i64 0))
  %5 = call i32 @smiapp_write_8s(%struct.smiapp_sensor* %3, %struct.smiapp_reg_8* getelementptr inbounds ([28 x %struct.smiapp_reg_8], [28 x %struct.smiapp_reg_8]* @jt8ew9_post_poweron.regs, i64 0, i64 0), i32 %4)
  ret i32 %5
}

declare dso_local i32 @smiapp_write_8s(%struct.smiapp_sensor*, %struct.smiapp_reg_8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.smiapp_reg_8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
