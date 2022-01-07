; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_mc417_memory_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_mc417_memory_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@MC417_OEN = common dso_local global i32 0, align 4
@MC417_MIRDY = common dso_local global i32 0, align 4
@MC417_MIRD = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE0 = common dso_local global i32 0, align 4
@MC417_RWD = common dso_local global i32 0, align 4
@MC417_MICS = common dso_local global i32 0, align 4
@MC417_MIWR = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE2 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE3 = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE2 = common dso_local global i32 0, align 4
@MCI_MODE_MEMORY_WRITE = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc417_memory_write(%struct.cx23885_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @MC417_OEN, align 4
  %9 = load i32, i32* @MC417_MIRDY, align 4
  %10 = call i32 @cx_write(i32 %8, i32 %9)
  %11 = load i32, i32* @MC417_MIRD, align 4
  %12 = load i32, i32* @MC417_MIRDY, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @MCI_MEMORY_DATA_BYTE0, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 255
  %18 = or i32 %15, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @MC417_RWD, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @cx_write(i32 %19, i32 %20)
  %22 = load i32, i32* @MC417_MICS, align 4
  %23 = load i32, i32* @MC417_MIWR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @MC417_RWD, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @cx_write(i32 %27, i32 %28)
  %30 = load i32, i32* @MC417_MIRD, align 4
  %31 = load i32, i32* @MC417_MIRDY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @MCI_MEMORY_DATA_BYTE1, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %6, align 4
  %36 = ashr i32 %35, 8
  %37 = and i32 %36, 255
  %38 = or i32 %34, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @MC417_RWD, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @cx_write(i32 %39, i32 %40)
  %42 = load i32, i32* @MC417_MICS, align 4
  %43 = load i32, i32* @MC417_MIWR, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @MC417_RWD, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @cx_write(i32 %47, i32 %48)
  %50 = load i32, i32* @MC417_MIRD, align 4
  %51 = load i32, i32* @MC417_MIRDY, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @MCI_MEMORY_DATA_BYTE2, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = or i32 %54, %57
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* @MC417_RWD, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @cx_write(i32 %59, i32 %60)
  %62 = load i32, i32* @MC417_MICS, align 4
  %63 = load i32, i32* @MC417_MIWR, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @MC417_RWD, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @cx_write(i32 %67, i32 %68)
  %70 = load i32, i32* @MC417_MIRD, align 4
  %71 = load i32, i32* @MC417_MIRDY, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @MCI_MEMORY_DATA_BYTE3, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %6, align 4
  %76 = ashr i32 %75, 24
  %77 = and i32 %76, 255
  %78 = or i32 %74, %77
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @MC417_RWD, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @cx_write(i32 %79, i32 %80)
  %82 = load i32, i32* @MC417_MICS, align 4
  %83 = load i32, i32* @MC417_MIWR, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* @MC417_RWD, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @cx_write(i32 %87, i32 %88)
  %90 = load i32, i32* @MC417_MIRD, align 4
  %91 = load i32, i32* @MC417_MIRDY, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE2, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @MCI_MODE_MEMORY_WRITE, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %5, align 4
  %98 = ashr i32 %97, 16
  %99 = and i32 %98, 63
  %100 = or i32 %96, %99
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @MC417_RWD, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @cx_write(i32 %101, i32 %102)
  %104 = load i32, i32* @MC417_MICS, align 4
  %105 = load i32, i32* @MC417_MIWR, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @MC417_RWD, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @cx_write(i32 %109, i32 %110)
  %112 = load i32, i32* @MC417_MIRD, align 4
  %113 = load i32, i32* @MC417_MIRDY, align 4
  %114 = or i32 %112, %113
  %115 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE1, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* %5, align 4
  %118 = ashr i32 %117, 8
  %119 = and i32 %118, 255
  %120 = or i32 %116, %119
  store i32 %120, i32* %7, align 4
  %121 = load i32, i32* @MC417_RWD, align 4
  %122 = load i32, i32* %7, align 4
  %123 = call i32 @cx_write(i32 %121, i32 %122)
  %124 = load i32, i32* @MC417_MICS, align 4
  %125 = load i32, i32* @MC417_MIWR, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* %7, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %7, align 4
  %129 = load i32, i32* @MC417_RWD, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @cx_write(i32 %129, i32 %130)
  %132 = load i32, i32* @MC417_MIRD, align 4
  %133 = load i32, i32* @MC417_MIRDY, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE0, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, 255
  %139 = or i32 %136, %138
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* @MC417_RWD, align 4
  %141 = load i32, i32* %7, align 4
  %142 = call i32 @cx_write(i32 %140, i32 %141)
  %143 = load i32, i32* @MC417_MICS, align 4
  %144 = load i32, i32* @MC417_MIWR, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* %7, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* @MC417_RWD, align 4
  %149 = load i32, i32* %7, align 4
  %150 = call i32 @cx_write(i32 %148, i32 %149)
  %151 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %152 = call i32 @mc417_wait_ready(%struct.cx23885_dev* %151)
  ret i32 %152
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @mc417_wait_ready(%struct.cx23885_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
