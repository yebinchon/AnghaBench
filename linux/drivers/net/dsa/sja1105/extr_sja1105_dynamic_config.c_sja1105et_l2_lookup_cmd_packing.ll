; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105et_l2_lookup_cmd_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105et_l2_lookup_cmd_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_dyn_cmd = type { i32, i32, i32, i32, i32 }

@SJA1105ET_SIZE_L2_LOOKUP_ENTRY = common dso_local global i32 0, align 4
@SJA1105_SIZE_DYN_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sja1105_dyn_cmd*, i32)* @sja1105et_l2_lookup_cmd_packing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105et_l2_lookup_cmd_packing(i8* %0, %struct.sja1105_dyn_cmd* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sja1105_dyn_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sja1105_dyn_cmd* %1, %struct.sja1105_dyn_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i32, i32* @SJA1105ET_SIZE_L2_LOOKUP_ENTRY, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, i8* %9, i64 %11
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* @SJA1105_SIZE_DYN_CMD, align 4
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %15, i32 0, i32 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @sja1105_packing(i8* %14, i32* %16, i32 31, i32 31, i32 %17, i32 %18)
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %21, i32 0, i32 3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @sja1105_packing(i8* %20, i32* %22, i32 30, i32 30, i32 %23, i32 %24)
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %27, i32 0, i32 2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sja1105_packing(i8* %26, i32* %28, i32 29, i32 29, i32 %29, i32 %30)
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %34 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %33, i32 0, i32 1
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @sja1105_packing(i8* %32, i32* %34, i32 27, i32 27, i32 %35, i32 %36)
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %39, i32 0, i32 0
  %41 = load i32, i32* @SJA1105ET_SIZE_L2_LOOKUP_ENTRY, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @sja1105_packing(i8* %38, i32* %40, i32 29, i32 20, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
