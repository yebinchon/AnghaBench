; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_initialize_ordinals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_initialize_ordinals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32, %struct.ipw2100_ordinals }
%struct.ipw2100_ordinals = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IPW_MEM_HOST_SHARED_ORDINALS_TABLE_1 = common dso_local global i32 0, align 4
@IPW_MEM_HOST_SHARED_ORDINALS_TABLE_2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"table 1 size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"table 2 size: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw2100_priv*)* @ipw2100_initialize_ordinals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw2100_initialize_ordinals(%struct.ipw2100_priv* %0) #0 {
  %2 = alloca %struct.ipw2100_priv*, align 8
  %3 = alloca %struct.ipw2100_ordinals*, align 8
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %2, align 8
  %4 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %4, i32 0, i32 1
  store %struct.ipw2100_ordinals* %5, %struct.ipw2100_ordinals** %3, align 8
  %6 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IPW_MEM_HOST_SHARED_ORDINALS_TABLE_1, align 4
  %11 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %3, align 8
  %12 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %11, i32 0, i32 3
  %13 = call i32 @read_register(i32 %9, i32 %10, i32* %12)
  %14 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IPW_MEM_HOST_SHARED_ORDINALS_TABLE_2, align 4
  %18 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %3, align 8
  %19 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %18, i32 0, i32 2
  %20 = call i32 @read_register(i32 %16, i32 %17, i32* %19)
  %21 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %22 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %3, align 8
  %25 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %3, align 8
  %28 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %27, i32 0, i32 0
  %29 = call i32 @read_nic_dword(i32 %23, i32 %26, i32* %28)
  %30 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %3, align 8
  %34 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %3, align 8
  %37 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %36, i32 0, i32 1
  %38 = call i32 @read_nic_dword(i32 %32, i32 %35, i32* %37)
  %39 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %3, align 8
  %40 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 65535
  store i32 %42, i32* %40, align 4
  %43 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %3, align 8
  %44 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.ipw2100_ordinals*, %struct.ipw2100_ordinals** %3, align 8
  %48 = getelementptr inbounds %struct.ipw2100_ordinals, %struct.ipw2100_ordinals* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @read_register(i32, i32, i32*) #1

declare dso_local i32 @read_nic_dword(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
