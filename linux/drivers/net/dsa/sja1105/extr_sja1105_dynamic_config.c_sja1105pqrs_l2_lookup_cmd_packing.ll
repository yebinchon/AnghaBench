; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105pqrs_l2_lookup_cmd_packing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/sja1105/extr_sja1105_dynamic_config.c_sja1105pqrs_l2_lookup_cmd_packing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1105_dyn_cmd = type { i32, i32, i64, i32, i32, i32 }

@SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY = common dso_local global i32 0, align 4
@SJA1105_SIZE_DYN_CMD = common dso_local global i32 0, align 4
@SPI_READ = common dso_local global i32 0, align 4
@SJA1105_HOSTCMD_SEARCH = common dso_local global i32 0, align 4
@SJA1105_HOSTCMD_READ = common dso_local global i32 0, align 4
@SJA1105_HOSTCMD_WRITE = common dso_local global i32 0, align 4
@SJA1105_HOSTCMD_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sja1105_dyn_cmd*, i32)* @sja1105pqrs_l2_lookup_cmd_packing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sja1105pqrs_l2_lookup_cmd_packing(i8* %0, %struct.sja1105_dyn_cmd* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sja1105_dyn_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sja1105_dyn_cmd* %1, %struct.sja1105_dyn_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr i8, i8* %10, i64 %12
  store i8* %13, i8** %7, align 8
  %14 = load i32, i32* @SJA1105_SIZE_DYN_CMD, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %17 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %16, i32 0, i32 5
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sja1105_packing(i8* %15, i32* %17, i32 31, i32 31, i32 %18, i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %23 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %22, i32 0, i32 3
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @sja1105_packing(i8* %21, i32* %23, i32 30, i32 30, i32 %24, i32 %25)
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %28, i32 0, i32 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @sja1105_packing(i8* %27, i32* %29, i32 29, i32 29, i32 %30, i32 %31)
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %34, i32 0, i32 1
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @sja1105_packing(i8* %33, i32* %35, i32 27, i32 27, i32 %36, i32 %37)
  %39 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %40 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @SPI_READ, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %54

44:                                               ; preds = %3
  %45 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @SJA1105_HOSTCMD_SEARCH, align 4
  store i32 %50, i32* %9, align 4
  br label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @SJA1105_HOSTCMD_READ, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %49
  br label %64

54:                                               ; preds = %3
  %55 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %56 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* @SJA1105_HOSTCMD_WRITE, align 4
  store i32 %60, i32* %9, align 4
  br label %63

61:                                               ; preds = %54
  %62 = load i32, i32* @SJA1105_HOSTCMD_INVALIDATE, align 4
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %61, %59
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @sja1105_packing(i8* %65, i32* %9, i32 25, i32 23, i32 %66, i32 %67)
  %69 = load i8*, i8** %4, align 8
  %70 = load %struct.sja1105_dyn_cmd*, %struct.sja1105_dyn_cmd** %5, align 8
  %71 = getelementptr inbounds %struct.sja1105_dyn_cmd, %struct.sja1105_dyn_cmd* %70, i32 0, i32 0
  %72 = load i32, i32* @SJA1105PQRS_SIZE_L2_LOOKUP_ENTRY, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @sja1105_packing(i8* %69, i32* %71, i32 15, i32 6, i32 %72, i32 %73)
  ret void
}

declare dso_local i32 @sja1105_packing(i8*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
