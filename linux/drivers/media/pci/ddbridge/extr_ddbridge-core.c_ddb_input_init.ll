; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_input_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb_port = type { i32, %struct.ddb_input**, %struct.ddb* }
%struct.ddb_input = type { i32, i32, %struct.ddb_port* }
%struct.ddb = type { i32, i64, %struct.ddb_input* }
%struct.ddb_regmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"init link %u, input %u, regs %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"init link %u, input %u, handler %u\0A\00", align 1
@input_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddb_port*, i32, i32, i32)* @ddb_input_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddb_input_init(%struct.ddb_port* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ddb_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ddb*, align 8
  %10 = alloca %struct.ddb_input*, align 8
  %11 = alloca %struct.ddb_regmap*, align 8
  %12 = alloca %struct.ddb_regmap*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ddb_port* %0, %struct.ddb_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %16 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %15, i32 0, i32 2
  %17 = load %struct.ddb*, %struct.ddb** %16, align 8
  store %struct.ddb* %17, %struct.ddb** %9, align 8
  %18 = load %struct.ddb*, %struct.ddb** %9, align 8
  %19 = getelementptr inbounds %struct.ddb, %struct.ddb* %18, i32 0, i32 2
  %20 = load %struct.ddb_input*, %struct.ddb_input** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %20, i64 %22
  store %struct.ddb_input* %23, %struct.ddb_input** %10, align 8
  %24 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  %25 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %26 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %25, i32 0, i32 1
  %27 = load %struct.ddb_input**, %struct.ddb_input*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.ddb_input*, %struct.ddb_input** %27, i64 %29
  store %struct.ddb_input* %24, %struct.ddb_input** %30, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  %33 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %35 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  %36 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %35, i32 0, i32 2
  store %struct.ddb_port* %34, %struct.ddb_port** %36, align 8
  %37 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  %38 = call %struct.ddb_regmap* @io_regmap(%struct.ddb_input* %37, i32 1)
  store %struct.ddb_regmap* %38, %struct.ddb_regmap** %11, align 8
  %39 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %40 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @DDB_LINK_TAG(i32 %41)
  %43 = load %struct.ddb_regmap*, %struct.ddb_regmap** %11, align 8
  %44 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ddb_regmap*, %struct.ddb_regmap** %11, align 8
  %49 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = mul nsw i32 %52, %53
  %55 = add nsw i32 %47, %54
  %56 = or i32 %42, %55
  %57 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  %58 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ddb*, %struct.ddb** %9, align 8
  %60 = getelementptr inbounds %struct.ddb, %struct.ddb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %63 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  %67 = getelementptr inbounds %struct.ddb_input, %struct.ddb_input* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @dev_dbg(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65, i32 %68)
  %70 = load %struct.ddb*, %struct.ddb** %9, align 8
  %71 = getelementptr inbounds %struct.ddb, %struct.ddb* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %115

74:                                               ; preds = %4
  %75 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  %76 = call %struct.ddb_regmap* @io_regmap(%struct.ddb_input* %75, i32 0)
  store %struct.ddb_regmap* %76, %struct.ddb_regmap** %12, align 8
  %77 = load %struct.ddb_regmap*, %struct.ddb_regmap** %12, align 8
  %78 = getelementptr inbounds %struct.ddb_regmap, %struct.ddb_regmap* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %14, align 4
  %81 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %82 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %74
  %86 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %87 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = mul nsw i32 %89, 8
  %91 = add nsw i32 32, %90
  %92 = load i32, i32* %14, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %14, align 4
  br label %94

94:                                               ; preds = %85, %74
  %95 = load %struct.ddb*, %struct.ddb** %9, align 8
  %96 = getelementptr inbounds %struct.ddb, %struct.ddb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ddb_port*, %struct.ddb_port** %5, align 8
  %99 = getelementptr inbounds %struct.ddb_port, %struct.ddb_port* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %13, align 4
  %104 = add nsw i32 %102, %103
  %105 = call i32 @dev_dbg(i32 %97, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101, i32 %104)
  %106 = load %struct.ddb*, %struct.ddb** %9, align 8
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %13, align 4
  %109 = add nsw i32 %107, %108
  %110 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  %111 = call i32 @ddb_irq_set(%struct.ddb* %106, i32 0, i32 %109, i32* @input_handler, %struct.ddb_input* %110)
  %112 = load %struct.ddb_input*, %struct.ddb_input** %10, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @ddb_dma_init(%struct.ddb_input* %112, i32 %113, i32 0)
  br label %115

115:                                              ; preds = %94, %4
  ret void
}

declare dso_local %struct.ddb_regmap* @io_regmap(%struct.ddb_input*, i32) #1

declare dso_local i32 @DDB_LINK_TAG(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ddb_irq_set(%struct.ddb*, i32, i32, i32*, %struct.ddb_input*) #1

declare dso_local i32 @ddb_dma_init(%struct.ddb_input*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
