; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_hwsb_ver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_read_hwsb_ver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32* }

@TG3_NVM_HWSB_CFG1 = common dso_local global i32 0, align 4
@TG3_NVM_HWSB_CFG1_MAJMSK = common dso_local global i32 0, align 4
@TG3_NVM_HWSB_CFG1_MAJSFT = common dso_local global i32 0, align 4
@TG3_NVM_HWSB_CFG1_MINMSK = common dso_local global i32 0, align 4
@TG3_NVM_HWSB_CFG1_MINSFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"sb v%d.%02d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_read_hwsb_ver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_read_hwsb_ver(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  %6 = load %struct.tg3*, %struct.tg3** %2, align 8
  %7 = load i32, i32* @TG3_NVM_HWSB_CFG1, align 4
  %8 = call i64 @tg3_nvram_read(%struct.tg3* %6, i32 %7, i32* %3)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %29

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TG3_NVM_HWSB_CFG1_MAJMSK, align 4
  %14 = and i32 %12, %13
  %15 = load i32, i32* @TG3_NVM_HWSB_CFG1_MAJSFT, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @TG3_NVM_HWSB_CFG1_MINMSK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @TG3_NVM_HWSB_CFG1_MINSFT, align 4
  %21 = ashr i32 %19, %20
  store i32 %21, i32* %5, align 4
  %22 = load %struct.tg3*, %struct.tg3** %2, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @snprintf(i32* %25, i32 32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %11, %10
  ret void
}

declare dso_local i64 @tg3_nvram_read(%struct.tg3*, i32, i32*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
