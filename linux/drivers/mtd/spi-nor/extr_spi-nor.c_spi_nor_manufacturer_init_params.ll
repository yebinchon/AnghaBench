; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_manufacturer_init_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_spi_nor_manufacturer_init_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.spi_nor*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_nor*)* @spi_nor_manufacturer_init_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_nor_manufacturer_init_params(%struct.spi_nor* %0) #0 {
  %2 = alloca %struct.spi_nor*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %2, align 8
  %3 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %4 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = call i32 @JEDEC_MFR(%struct.TYPE_4__* %5)
  switch i32 %6, label %16 [
    i32 131, label %7
    i32 129, label %10
    i32 130, label %10
    i32 128, label %13
  ]

7:                                                ; preds = %1
  %8 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %9 = call i32 @macronix_set_default_init(%struct.spi_nor* %8)
  br label %17

10:                                               ; preds = %1, %1
  %11 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %12 = call i32 @st_micron_set_default_init(%struct.spi_nor* %11)
  br label %17

13:                                               ; preds = %1
  %14 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %15 = call i32 @winbond_set_default_init(%struct.spi_nor* %14)
  br label %17

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %16, %13, %10, %7
  %18 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %19 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = icmp ne %struct.TYPE_3__* %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %17
  %25 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %26 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32 (%struct.spi_nor*)*, i32 (%struct.spi_nor*)** %30, align 8
  %32 = icmp ne i32 (%struct.spi_nor*)* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %24
  %34 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %35 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (%struct.spi_nor*)*, i32 (%struct.spi_nor*)** %39, align 8
  %41 = load %struct.spi_nor*, %struct.spi_nor** %2, align 8
  %42 = call i32 %40(%struct.spi_nor* %41)
  br label %43

43:                                               ; preds = %33, %24, %17
  ret void
}

declare dso_local i32 @JEDEC_MFR(%struct.TYPE_4__*) #1

declare dso_local i32 @macronix_set_default_init(%struct.spi_nor*) #1

declare dso_local i32 @st_micron_set_default_init(%struct.spi_nor*) #1

declare dso_local i32 @winbond_set_default_init(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
