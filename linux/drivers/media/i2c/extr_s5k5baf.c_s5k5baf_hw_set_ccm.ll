; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_ccm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_ccm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32 }

@S5K5BAF_FW_ID_CCM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*)* @s5k5baf_hw_set_ccm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_set_ccm(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  %3 = alloca i32*, align 8
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %4 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %5 = load i32, i32* @S5K5BAF_FW_ID_CCM, align 4
  %6 = call i32* @s5k5baf_fw_get_seq(%struct.s5k5baf* %4, i32 %5)
  store i32* %6, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @s5k5baf_write_nseq(%struct.s5k5baf* %10, i32* %11)
  br label %13

13:                                               ; preds = %9, %1
  ret void
}

declare dso_local i32* @s5k5baf_fw_get_seq(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_write_nseq(%struct.s5k5baf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
