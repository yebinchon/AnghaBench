; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_mc417_register_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_mc417_register_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@MC417_OEN = common dso_local global i32 0, align 4
@MC417_MIRDY = common dso_local global i32 0, align 4
@MC417_MIRD = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE0 = common dso_local global i32 0, align 4
@MC417_RWD = common dso_local global i32 0, align 4
@MC417_MICS = common dso_local global i32 0, align 4
@MC417_MIWR = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE1 = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE2 = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE3 = common dso_local global i32 0, align 4
@MCI_REGISTER_ADDRESS_BYTE0 = common dso_local global i32 0, align 4
@MCI_REGISTER_ADDRESS_BYTE1 = common dso_local global i32 0, align 4
@MCI_REGISTER_MODE = common dso_local global i32 0, align 4
@MCI_MODE_REGISTER_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc417_register_write(%struct.cx23885_dev* %0, i32 %1, i32 %2) #0 {
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
  %14 = load i32, i32* @MCI_REGISTER_DATA_BYTE0, align 4
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
  %33 = load i32, i32* @MCI_REGISTER_DATA_BYTE1, align 4
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
  %53 = load i32, i32* @MCI_REGISTER_DATA_BYTE2, align 4
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
  %73 = load i32, i32* @MCI_REGISTER_DATA_BYTE3, align 4
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
  %93 = load i32, i32* @MCI_REGISTER_ADDRESS_BYTE0, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %5, align 4
  %96 = and i32 %95, 255
  %97 = or i32 %94, %96
  store i32 %97, i32* %7, align 4
  %98 = load i32, i32* @MC417_RWD, align 4
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @cx_write(i32 %98, i32 %99)
  %101 = load i32, i32* @MC417_MICS, align 4
  %102 = load i32, i32* @MC417_MIWR, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @MC417_RWD, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @cx_write(i32 %106, i32 %107)
  %109 = load i32, i32* @MC417_MIRD, align 4
  %110 = load i32, i32* @MC417_MIRDY, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @MCI_REGISTER_ADDRESS_BYTE1, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %5, align 4
  %115 = ashr i32 %114, 8
  %116 = and i32 %115, 255
  %117 = or i32 %113, %116
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* @MC417_RWD, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @cx_write(i32 %118, i32 %119)
  %121 = load i32, i32* @MC417_MICS, align 4
  %122 = load i32, i32* @MC417_MIWR, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %7, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* @MC417_RWD, align 4
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @cx_write(i32 %126, i32 %127)
  %129 = load i32, i32* @MC417_MIRD, align 4
  %130 = load i32, i32* @MC417_MIRDY, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @MCI_REGISTER_MODE, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @MCI_MODE_REGISTER_WRITE, align 4
  %135 = or i32 %133, %134
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* @MC417_RWD, align 4
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @cx_write(i32 %136, i32 %137)
  %139 = load i32, i32* @MC417_MICS, align 4
  %140 = load i32, i32* @MC417_MIWR, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load i32, i32* @MC417_RWD, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @cx_write(i32 %144, i32 %145)
  %147 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %148 = call i32 @mc417_wait_ready(%struct.cx23885_dev* %147)
  ret i32 %148
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @mc417_wait_ready(%struct.cx23885_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
