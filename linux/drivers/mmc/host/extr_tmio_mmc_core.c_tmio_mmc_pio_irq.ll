; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_pio_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_pio_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.TYPE_3__*, i64, %struct.mmc_data* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_data = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"PIO IRQ in DMA mode!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Spurious PIO IRQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"count: %08x offset: %08x flags %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*)* @tmio_mmc_pio_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_pio_irq(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 3
  %10 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  store %struct.mmc_data* %10, %struct.mmc_data** %3, align 8
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %12 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %88

17:                                               ; preds = %1
  %18 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %19 = icmp ne %struct.mmc_data* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %88

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %25 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i8* @tmio_mmc_kmap_atomic(%struct.TYPE_3__* %26, i64* %7)
  store i8* %27, i8** %4, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %30 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr i8, i8* %28, i64 %32
  %34 = bitcast i8* %33 to i16*
  store i16* %34, i16** %5, align 8
  %35 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %36 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %41 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub i32 %39, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %46 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ugt i32 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %23
  %50 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %23
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %56 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %60)
  %62 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %63 = load i16*, i16** %5, align 8
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @tmio_mmc_transfer_data(%struct.tmio_mmc_host* %62, i16* %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %68 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %72 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = call i32 @tmio_mmc_kunmap_atomic(%struct.TYPE_3__* %73, i64* %7, i8* %74)
  %76 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %77 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %80 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp eq i32 %78, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %53
  %86 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %87 = call i32 @tmio_mmc_next_sg(%struct.tmio_mmc_host* %86)
  br label %88

88:                                               ; preds = %15, %20, %85, %53
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i8* @tmio_mmc_kmap_atomic(%struct.TYPE_3__*, i64*) #1

declare dso_local i32 @tmio_mmc_transfer_data(%struct.tmio_mmc_host*, i16*, i32) #1

declare dso_local i32 @tmio_mmc_kunmap_atomic(%struct.TYPE_3__*, i64*, i8*) #1

declare dso_local i32 @tmio_mmc_next_sg(%struct.tmio_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
