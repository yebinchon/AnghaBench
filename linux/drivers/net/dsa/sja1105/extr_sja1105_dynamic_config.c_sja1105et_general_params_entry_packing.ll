; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105et_general_params_entry_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105et_general_params_entry_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_general_params_entry = type { i32 }

@SJA1105ET_SIZE_GENERAL_PARAMS_DYN_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i8*, i32)* @sja1105et_general_params_entry_packing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sja1105et_general_params_entry_packing(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sja1105_general_params_entry*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.sja1105_general_params_entry*
  store %struct.sja1105_general_params_entry* %10, %struct.sja1105_general_params_entry** %7, align 8
  %11 = load i32, i32* @SJA1105ET_SIZE_GENERAL_PARAMS_DYN_CMD, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.sja1105_general_params_entry*, %struct.sja1105_general_params_entry** %7, align 8
  %14 = getelementptr inbounds %struct.sja1105_general_params_entry, %struct.sja1105_general_params_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @sja1105_packing(i8* %12, i32* %14, i32 2, i32 0, i32 %15, i32 %16)
  ret i64 0
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
