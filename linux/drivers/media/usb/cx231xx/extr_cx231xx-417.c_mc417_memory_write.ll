; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_mc417_memory_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-417.c_mc417_memory_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@MCI_MEMORY_DATA_BYTE0 = common dso_local global i32 0, align 4
@ITVC_WRITE_DIR = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE2 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE3 = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE2 = common dso_local global i32 0, align 4
@MCI_MODE_MEMORY_WRITE = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, i32, i32)* @mc417_memory_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mc417_memory_write(%struct.cx231xx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cx231xx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @MCI_MEMORY_DATA_BYTE0, align 4
  %11 = or i32 130, %10
  %12 = load i32, i32* %7, align 4
  %13 = and i32 %12, 255
  %14 = shl i32 %13, 8
  %15 = or i32 %11, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = shl i32 %16, 10
  store i32 %17, i32* %8, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %19 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @set_itvc_reg(%struct.cx231xx* %18, i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %4, align 4
  br label %143

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  %28 = or i32 %27, 5120
  store i32 %28, i32* %8, align 4
  %29 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %30 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @set_itvc_reg(%struct.cx231xx* %29, i32 %30, i32 %31)
  %33 = load i32, i32* @MCI_MEMORY_DATA_BYTE1, align 4
  %34 = or i32 130, %33
  %35 = load i32, i32* %7, align 4
  %36 = and i32 %35, 65280
  %37 = or i32 %34, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = shl i32 %38, 10
  store i32 %39, i32* %8, align 4
  %40 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %41 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @set_itvc_reg(%struct.cx231xx* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, 5120
  store i32 %45, i32* %8, align 4
  %46 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %47 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @set_itvc_reg(%struct.cx231xx* %46, i32 %47, i32 %48)
  %50 = load i32, i32* @MCI_MEMORY_DATA_BYTE2, align 4
  %51 = or i32 130, %50
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 16711680
  %54 = ashr i32 %53, 8
  %55 = or i32 %51, %54
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = shl i32 %56, 10
  store i32 %57, i32* %8, align 4
  %58 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %59 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @set_itvc_reg(%struct.cx231xx* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, 5120
  store i32 %63, i32* %8, align 4
  %64 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %65 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @set_itvc_reg(%struct.cx231xx* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @MCI_MEMORY_DATA_BYTE3, align 4
  %69 = or i32 130, %68
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, -16777216
  %72 = lshr i32 %71, 16
  %73 = or i32 %69, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %8, align 4
  %75 = shl i32 %74, 10
  store i32 %75, i32* %8, align 4
  %76 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %77 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @set_itvc_reg(%struct.cx231xx* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, 5120
  store i32 %81, i32* %8, align 4
  %82 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %83 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @set_itvc_reg(%struct.cx231xx* %82, i32 %83, i32 %84)
  %86 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE2, align 4
  %87 = or i32 130, %86
  %88 = load i32, i32* @MCI_MODE_MEMORY_WRITE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 4128768
  %92 = ashr i32 %91, 8
  %93 = or i32 %89, %92
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = shl i32 %94, 10
  store i32 %95, i32* %8, align 4
  %96 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %97 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @set_itvc_reg(%struct.cx231xx* %96, i32 %97, i32 %98)
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, 5120
  store i32 %101, i32* %8, align 4
  %102 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %103 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @set_itvc_reg(%struct.cx231xx* %102, i32 %103, i32 %104)
  %106 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE1, align 4
  %107 = or i32 130, %106
  %108 = load i32, i32* %6, align 4
  %109 = and i32 %108, 65280
  %110 = or i32 %107, %109
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = shl i32 %111, 10
  store i32 %112, i32* %8, align 4
  %113 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %114 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @set_itvc_reg(%struct.cx231xx* %113, i32 %114, i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = or i32 %117, 5120
  store i32 %118, i32* %8, align 4
  %119 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %120 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @set_itvc_reg(%struct.cx231xx* %119, i32 %120, i32 %121)
  %123 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE0, align 4
  %124 = or i32 130, %123
  %125 = load i32, i32* %6, align 4
  %126 = and i32 %125, 255
  %127 = shl i32 %126, 8
  %128 = or i32 %124, %127
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = shl i32 %129, 10
  store i32 %130, i32* %8, align 4
  %131 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %132 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @set_itvc_reg(%struct.cx231xx* %131, i32 %132, i32 %133)
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, 5120
  store i32 %136, i32* %8, align 4
  %137 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %138 = load i32, i32* @ITVC_WRITE_DIR, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @set_itvc_reg(%struct.cx231xx* %137, i32 %138, i32 %139)
  %141 = load %struct.cx231xx*, %struct.cx231xx** %5, align 8
  %142 = call i32 @wait_for_mci_complete(%struct.cx231xx* %141)
  store i32 0, i32* %4, align 4
  br label %143

143:                                              ; preds = %26, %24
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

declare dso_local i32 @set_itvc_reg(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @wait_for_mci_complete(%struct.cx231xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
