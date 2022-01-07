; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_output_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_output_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { i32, %struct.ddb_output*, %struct.ddb* }
%struct.ddb_output = type { i32, i32, %struct.ddb_port* }
%struct.ddb = type { i64, i32, %struct.ddb_output* }
%struct.ddb_regmap = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"init link %u, output %u, regs %08x\0A\00", align 1
@output_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_port*, i32)* @ddb_output_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_output_init(%struct.ddb_port* %0, i32 %1) #0 {
  %3 = alloca %struct.ddb_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ddb*, align 8
  %6 = alloca %struct.ddb_output*, align 8
  %7 = alloca %struct.ddb_regmap*, align 8
  %8 = alloca %struct.ddb_regmap*, align 8
  %9 = alloca i64, align 8
  store %struct.ddb_port* %0, %struct.ddb_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %11 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %10, i32 0, i32 2
  %12 = load %struct.ddb*, %struct.ddb** %11, align 8
  store %struct.ddb* %12, %struct.ddb** %5, align 8
  %13 = load %struct.ddb*, %struct.ddb** %5, align 8
  %14 = getelementptr inbounds %struct.ddb, %struct.ddb* %13, i32 0, i32 2
  %15 = load %struct.ddb_output*, %struct.ddb_output** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %15, i64 %17
  store %struct.ddb_output* %18, %struct.ddb_output** %6, align 8
  %19 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %20 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %21 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %20, i32 0, i32 1
  store %struct.ddb_output* %19, %struct.ddb_output** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %24 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %26 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %27 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %26, i32 0, i32 2
  store %struct.ddb_port* %25, %struct.ddb_port** %27, align 8
  %28 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %29 = call %struct.ddb_regmap* @io_regmap(%struct.ddb_output* %28, i32 1)
  store %struct.ddb_regmap* %29, %struct.ddb_regmap** %7, align 8
  %30 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %31 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @DDB_LINK_TAG(i32 %32)
  %34 = load %struct.ddb_regmap*, %struct.ddb_regmap** %7, align 8
  %35 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ddb_regmap*, %struct.ddb_regmap** %7, align 8
  %40 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %4, align 4
  %45 = mul nsw i32 %43, %44
  %46 = add nsw i32 %38, %45
  %47 = or i32 %33, %46
  %48 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %49 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ddb*, %struct.ddb** %5, align 8
  %51 = getelementptr inbounds %struct.ddb, %struct.ddb* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ddb_port*, %struct.ddb_port** %3, align 8
  %54 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %58 = getelementptr inbounds %struct.ddb_output, %struct.ddb_output* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_dbg(i32 %52, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %56, i32 %59)
  %61 = load %struct.ddb*, %struct.ddb** %5, align 8
  %62 = getelementptr inbounds %struct.ddb, %struct.ddb* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %81

65:                                               ; preds = %2
  %66 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %67 = call %struct.ddb_regmap* @io_regmap(%struct.ddb_output* %66, i32 0)
  store %struct.ddb_regmap* %67, %struct.ddb_regmap** %8, align 8
  %68 = load %struct.ddb_regmap*, %struct.ddb_regmap** %8, align 8
  %69 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %9, align 8
  %71 = load %struct.ddb*, %struct.ddb** %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %9, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %77 = call i32 @ddb_irq_set(%struct.ddb* %71, i32 0, i64 %75, i32* @output_handler, %struct.ddb_output* %76)
  %78 = load %struct.ddb_output*, %struct.ddb_output** %6, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @ddb_dma_init(%struct.ddb_output* %78, i32 %79, i32 1)
  br label %81

81:                                               ; preds = %65, %2
  ret void
}

declare dso_local %struct.ddb_regmap* @io_regmap(%struct.ddb_output*, i32) #1

declare dso_local i32 @DDB_LINK_TAG(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ddb_irq_set(%struct.ddb*, i32, i64, i32*, %struct.ddb_output*) #1

declare dso_local i32 @ddb_dma_init(%struct.ddb_output*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
