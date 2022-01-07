; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_of_memory.c_of_do_get_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_of_memory.c_of_do_get_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.lpddr2_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"max-freq\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"min-freq\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"tRPab\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tRCD\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"tWR\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"tRAS-min\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"tRRD\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"tWTR\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tXP\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"tRTP\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"tCKESR\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"tDQSCK-max\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"tFAW\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"tZQCS\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"tZQCL\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"tZQinit\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"tRAS-max-ns\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"tDQSCK-max-derated\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.lpddr2_timings*)* @of_do_get_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @of_do_get_timings(%struct.device_node* %0, %struct.lpddr2_timings* %1) #0 {
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.lpddr2_timings*, align 8
  %5 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %3, align 8
  store %struct.lpddr2_timings* %1, %struct.lpddr2_timings** %4, align 8
  %6 = load %struct.device_node*, %struct.device_node** %3, align 8
  %7 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %8 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %7, i32 0, i32 17
  %9 = call i32 @of_property_read_u32(%struct.device_node* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %12 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %11, i32 0, i32 16
  %13 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32* %12)
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.device_node*, %struct.device_node** %3, align 8
  %17 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %18 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %17, i32 0, i32 15
  %19 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %18)
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load %struct.device_node*, %struct.device_node** %3, align 8
  %23 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %24 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %23, i32 0, i32 14
  %25 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %24)
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.device_node*, %struct.device_node** %3, align 8
  %29 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %30 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %29, i32 0, i32 13
  %31 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32* %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  %35 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %36 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %35, i32 0, i32 12
  %37 = call i32 @of_property_read_u32(%struct.device_node* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32* %36)
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.device_node*, %struct.device_node** %3, align 8
  %41 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %42 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %41, i32 0, i32 11
  %43 = call i32 @of_property_read_u32(%struct.device_node* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  %46 = load %struct.device_node*, %struct.device_node** %3, align 8
  %47 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %48 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %47, i32 0, i32 10
  %49 = call i32 @of_property_read_u32(%struct.device_node* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32* %48)
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.device_node*, %struct.device_node** %3, align 8
  %53 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %54 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %53, i32 0, i32 9
  %55 = call i32 @of_property_read_u32(%struct.device_node* %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32* %54)
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.device_node*, %struct.device_node** %3, align 8
  %59 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %60 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %59, i32 0, i32 8
  %61 = call i32 @of_property_read_u32(%struct.device_node* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32* %60)
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load %struct.device_node*, %struct.device_node** %3, align 8
  %65 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %66 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %65, i32 0, i32 7
  %67 = call i32 @of_property_read_u32(%struct.device_node* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0), i32* %66)
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load %struct.device_node*, %struct.device_node** %3, align 8
  %71 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %72 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %71, i32 0, i32 6
  %73 = call i32 @of_property_read_u32(%struct.device_node* %70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i32* %72)
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load %struct.device_node*, %struct.device_node** %3, align 8
  %77 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %78 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %77, i32 0, i32 5
  %79 = call i32 @of_property_read_u32(%struct.device_node* %76, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i32* %78)
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.device_node*, %struct.device_node** %3, align 8
  %83 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %84 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %83, i32 0, i32 4
  %85 = call i32 @of_property_read_u32(%struct.device_node* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32* %84)
  %86 = load i32, i32* %5, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %5, align 4
  %88 = load %struct.device_node*, %struct.device_node** %3, align 8
  %89 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %90 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %89, i32 0, i32 3
  %91 = call i32 @of_property_read_u32(%struct.device_node* %88, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32* %90)
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  %94 = load %struct.device_node*, %struct.device_node** %3, align 8
  %95 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %96 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %95, i32 0, i32 2
  %97 = call i32 @of_property_read_u32(%struct.device_node* %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.15, i64 0, i64 0), i32* %96)
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load %struct.device_node*, %struct.device_node** %3, align 8
  %101 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %102 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %101, i32 0, i32 1
  %103 = call i32 @of_property_read_u32(%struct.device_node* %100, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i64 0, i64 0), i32* %102)
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.device_node*, %struct.device_node** %3, align 8
  %107 = load %struct.lpddr2_timings*, %struct.lpddr2_timings** %4, align 8
  %108 = getelementptr inbounds %struct.lpddr2_timings, %struct.lpddr2_timings* %107, i32 0, i32 0
  %109 = call i32 @of_property_read_u32(%struct.device_node* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.17, i64 0, i64 0), i32* %108)
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
