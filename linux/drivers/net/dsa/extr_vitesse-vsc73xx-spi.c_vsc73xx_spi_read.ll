; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-spi.c_vsc73xx_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-spi.c_vsc73xx_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsc73xx = type { %struct.vsc73xx_spi* }
%struct.vsc73xx_spi = type { i32, i32 }
%struct.spi_transfer = type { i32*, i32, i32* }
%struct.spi_message = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VSC73XX_CMD_SPI_MODE_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsc73xx*, i32, i32, i32, i32*)* @vsc73xx_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_spi_read(%struct.vsc73xx* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vsc73xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.vsc73xx_spi*, align 8
  %13 = alloca [2 x %struct.spi_transfer], align 16
  %14 = alloca %struct.spi_message, align 4
  %15 = alloca [4 x i32], align 16
  %16 = alloca [4 x i32], align 16
  %17 = alloca i32, align 4
  store %struct.vsc73xx* %0, %struct.vsc73xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.vsc73xx*, %struct.vsc73xx** %7, align 8
  %19 = getelementptr inbounds %struct.vsc73xx, %struct.vsc73xx* %18, i32 0, i32 0
  %20 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %19, align 8
  store %struct.vsc73xx_spi* %20, %struct.vsc73xx_spi** %12, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @vsc73xx_is_addr_valid(i32 %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %85

28:                                               ; preds = %5
  %29 = call i32 @spi_message_init(%struct.spi_message* %14)
  %30 = bitcast [2 x %struct.spi_transfer]* %13 to %struct.spi_transfer**
  %31 = call i32 @memset(%struct.spi_transfer** %30, i32 0, i32 48)
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %33 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %33, i32 0, i32 0
  store i32* %32, i32** %34, align 16
  %35 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %36 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %35, i32 0, i32 1
  store i32 16, i32* %36, align 8
  %37 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 0
  %38 = call i32 @spi_message_add_tail(%struct.spi_transfer* %37, %struct.spi_message* %14)
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %40 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 2
  store i32* %39, i32** %41, align 8
  %42 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %43 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %42, i32 0, i32 1
  store i32 16, i32* %43, align 8
  %44 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %13, i64 0, i64 1
  %45 = call i32 @spi_message_add_tail(%struct.spi_transfer* %44, %struct.spi_message* %14)
  %46 = load i32, i32* @VSC73XX_CMD_SPI_MODE_READ, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @vsc73xx_make_addr(i32 %46, i32 %47, i32 %48)
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %49, i32* %50, align 16
  %51 = load i32, i32* %10, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 1
  store i32 %51, i32* %52, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 2
  store i32 0, i32* %53, align 8
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3
  store i32 0, i32* %54, align 4
  %55 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %12, align 8
  %56 = getelementptr inbounds %struct.vsc73xx_spi, %struct.vsc73xx_spi* %55, i32 0, i32 0
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %12, align 8
  %59 = getelementptr inbounds %struct.vsc73xx_spi, %struct.vsc73xx_spi* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @spi_sync(i32 %60, %struct.spi_message* %14)
  store i32 %61, i32* %17, align 4
  %62 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %12, align 8
  %63 = getelementptr inbounds %struct.vsc73xx_spi, %struct.vsc73xx_spi* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %28
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %6, align 4
  br label %85

69:                                               ; preds = %28
  %70 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  %71 = load i32, i32* %70, align 16
  %72 = shl i32 %71, 24
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 16
  %76 = or i32 %72, %75
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 %78, 8
  %80 = or i32 %76, %79
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %80, %82
  %84 = load i32*, i32** %11, align 8
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %6, align 4
  br label %85

85:                                               ; preds = %69, %67, %25
  %86 = load i32, i32* %6, align 4
  ret i32 %86
}

declare dso_local i32 @vsc73xx_is_addr_valid(i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer**, i32, i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @vsc73xx_make_addr(i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
