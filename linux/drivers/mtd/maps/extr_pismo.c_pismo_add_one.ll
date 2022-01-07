; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pismo.c_pismo_add_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_pismo.c_pismo_add_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pismo_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.pismo_cs_block = type { i32, i32, i32, i32, i32 }
%struct.pismo_mem = type { i32, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"cs%u: bad width: %02x, ignoring\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"cs%u: %.32s: type %02x access %u00ps size %uK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pismo_data*, i32, %struct.pismo_cs_block*, i32)* @pismo_add_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pismo_add_one(%struct.pismo_data* %0, i32 %1, %struct.pismo_cs_block* %2, i32 %3) #0 {
  %5 = alloca %struct.pismo_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pismo_cs_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.pismo_mem, align 8
  store %struct.pismo_data* %0, %struct.pismo_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.pismo_cs_block* %2, %struct.pismo_cs_block** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.pismo_data*, %struct.pismo_data** %5, align 8
  %12 = getelementptr inbounds %struct.pismo_data, %struct.pismo_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.device* %14, %struct.device** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = load %struct.pismo_cs_block*, %struct.pismo_cs_block** %7, align 8
  %18 = getelementptr inbounds %struct.pismo_cs_block, %struct.pismo_cs_block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load %struct.pismo_cs_block*, %struct.pismo_cs_block** %7, align 8
  %22 = getelementptr inbounds %struct.pismo_cs_block, %struct.pismo_cs_block* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @pismo_width_to_bytes(i32 %23)
  %25 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  %26 = load %struct.pismo_cs_block*, %struct.pismo_cs_block** %7, align 8
  %27 = getelementptr inbounds %struct.pismo_cs_block, %struct.pismo_cs_block* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.pismo_cs_block*, %struct.pismo_cs_block** %7, align 8
  %32 = getelementptr inbounds %struct.pismo_cs_block, %struct.pismo_cs_block* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %4
  %40 = load %struct.device*, %struct.device** %9, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.pismo_cs_block*, %struct.pismo_cs_block** %7, align 8
  %43 = getelementptr inbounds %struct.pismo_cs_block, %struct.pismo_cs_block* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %44)
  br label %72

46:                                               ; preds = %4
  %47 = load %struct.device*, %struct.device** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.pismo_cs_block*, %struct.pismo_cs_block** %7, align 8
  %50 = getelementptr inbounds %struct.pismo_cs_block, %struct.pismo_cs_block* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sdiv i32 %57, 1024
  %59 = call i32 @dev_info(%struct.device* %47, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %51, i32 %53, i32 %55, i32 %58)
  %60 = getelementptr inbounds %struct.pismo_mem, %struct.pismo_mem* %10, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %72 [
    i32 0, label %62
    i32 1, label %63
    i32 2, label %64
    i32 3, label %68
  ]

62:                                               ; preds = %46
  br label %72

63:                                               ; preds = %46
  br label %72

64:                                               ; preds = %46
  %65 = load %struct.pismo_data*, %struct.pismo_data** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @pismo_add_nor(%struct.pismo_data* %65, i32 %66, %struct.pismo_mem* %10)
  br label %72

68:                                               ; preds = %46
  %69 = load %struct.pismo_data*, %struct.pismo_data** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @pismo_add_sram(%struct.pismo_data* %69, i32 %70, %struct.pismo_mem* %10)
  br label %72

72:                                               ; preds = %39, %46, %68, %64, %63, %62
  ret void
}

declare dso_local i64 @pismo_width_to_bytes(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pismo_add_nor(%struct.pismo_data*, i32, %struct.pismo_mem*) #1

declare dso_local i32 @pismo_add_sram(%struct.pismo_data*, i32, %struct.pismo_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
