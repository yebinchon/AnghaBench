; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_mc417_register_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_mc417_register_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@MC417_OEN = common dso_local global i32 0, align 4
@MC417_MIRDY = common dso_local global i32 0, align 4
@MC417_MIRD = common dso_local global i32 0, align 4
@MCI_REGISTER_ADDRESS_BYTE0 = common dso_local global i32 0, align 4
@MC417_RWD = common dso_local global i32 0, align 4
@MC417_MICS = common dso_local global i32 0, align 4
@MC417_MIWR = common dso_local global i32 0, align 4
@MCI_REGISTER_ADDRESS_BYTE1 = common dso_local global i32 0, align 4
@MCI_REGISTER_MODE = common dso_local global i32 0, align 4
@MCI_MODE_REGISTER_READ = common dso_local global i32 0, align 4
@MC417_MIDATA = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE0 = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE1 = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE2 = common dso_local global i32 0, align 4
@MCI_REGISTER_DATA_BYTE3 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc417_register_read(%struct.cx23885_dev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.cx23885_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32, i32* @MC417_OEN, align 4
  %12 = load i32, i32* @MC417_MIRDY, align 4
  %13 = call i32 @cx_write(i32 %11, i32 %12)
  %14 = load i32, i32* @MC417_MIRD, align 4
  %15 = load i32, i32* @MC417_MIRDY, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MCI_REGISTER_ADDRESS_BYTE0, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 255
  %21 = or i32 %18, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @MC417_RWD, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @cx_write(i32 %22, i32 %23)
  %25 = load i32, i32* @MC417_MICS, align 4
  %26 = load i32, i32* @MC417_MIWR, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %8, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @MC417_RWD, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @cx_write(i32 %30, i32 %31)
  %33 = load i32, i32* @MC417_MIRD, align 4
  %34 = load i32, i32* @MC417_MIRDY, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @MCI_REGISTER_ADDRESS_BYTE1, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  %41 = or i32 %37, %40
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @MC417_RWD, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @cx_write(i32 %42, i32 %43)
  %45 = load i32, i32* @MC417_MICS, align 4
  %46 = load i32, i32* @MC417_MIWR, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %8, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @MC417_RWD, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @cx_write(i32 %50, i32 %51)
  %53 = load i32, i32* @MC417_MIRD, align 4
  %54 = load i32, i32* @MC417_MIRDY, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MCI_REGISTER_MODE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @MCI_MODE_REGISTER_READ, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* @MC417_RWD, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @cx_write(i32 %60, i32 %61)
  %63 = load i32, i32* @MC417_MICS, align 4
  %64 = load i32, i32* @MC417_MIWR, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* @MC417_RWD, align 4
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @cx_write(i32 %68, i32 %69)
  %71 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %72 = call i32 @mc417_wait_ready(%struct.cx23885_dev* %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @MC417_OEN, align 4
  %74 = load i32, i32* @MC417_MIRDY, align 4
  %75 = load i32, i32* @MC417_MIDATA, align 4
  %76 = or i32 %74, %75
  %77 = call i32 @cx_write(i32 %73, i32 %76)
  %78 = load i32, i32* @MC417_MIRD, align 4
  %79 = load i32, i32* @MC417_MIRDY, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @MCI_REGISTER_DATA_BYTE0, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* @MC417_RWD, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @cx_write(i32 %83, i32 %84)
  %86 = load i32, i32* @MC417_MIWR, align 4
  %87 = load i32, i32* @MC417_MIRDY, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @MCI_REGISTER_DATA_BYTE0, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* @MC417_RWD, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @cx_write(i32 %91, i32 %92)
  %94 = load i32, i32* @MC417_RWD, align 4
  %95 = call i32 @cx_read(i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %9, align 4
  %97 = and i32 %96, 255
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* @MC417_MIWR, align 4
  %99 = load i32, i32* @MC417_MIRD, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @MC417_MICS, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @MC417_MIRDY, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* @MC417_RWD, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @cx_write(i32 %105, i32 %106)
  %108 = load i32, i32* @MC417_MIRD, align 4
  %109 = load i32, i32* @MC417_MIRDY, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @MCI_REGISTER_DATA_BYTE1, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* @MC417_RWD, align 4
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @cx_write(i32 %113, i32 %114)
  %116 = load i32, i32* @MC417_MIWR, align 4
  %117 = load i32, i32* @MC417_MIRDY, align 4
  %118 = or i32 %116, %117
  %119 = load i32, i32* @MCI_REGISTER_DATA_BYTE1, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* @MC417_RWD, align 4
  %122 = load i32, i32* %8, align 4
  %123 = call i32 @cx_write(i32 %121, i32 %122)
  %124 = load i32, i32* @MC417_RWD, align 4
  %125 = call i32 @cx_read(i32 %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = and i32 %126, 255
  %128 = shl i32 %127, 8
  %129 = load i32, i32* %10, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* @MC417_MIWR, align 4
  %132 = load i32, i32* @MC417_MIRD, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @MC417_MICS, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @MC417_MIRDY, align 4
  %137 = or i32 %135, %136
  store i32 %137, i32* %8, align 4
  %138 = load i32, i32* @MC417_RWD, align 4
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @cx_write(i32 %138, i32 %139)
  %141 = load i32, i32* @MC417_MIRD, align 4
  %142 = load i32, i32* @MC417_MIRDY, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @MCI_REGISTER_DATA_BYTE2, align 4
  %145 = or i32 %143, %144
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* @MC417_RWD, align 4
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @cx_write(i32 %146, i32 %147)
  %149 = load i32, i32* @MC417_MIWR, align 4
  %150 = load i32, i32* @MC417_MIRDY, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @MCI_REGISTER_DATA_BYTE2, align 4
  %153 = or i32 %151, %152
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* @MC417_RWD, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @cx_write(i32 %154, i32 %155)
  %157 = load i32, i32* @MC417_RWD, align 4
  %158 = call i32 @cx_read(i32 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = and i32 %159, 255
  %161 = shl i32 %160, 16
  %162 = load i32, i32* %10, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* @MC417_MIWR, align 4
  %165 = load i32, i32* @MC417_MIRD, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @MC417_MICS, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @MC417_MIRDY, align 4
  %170 = or i32 %168, %169
  store i32 %170, i32* %8, align 4
  %171 = load i32, i32* @MC417_RWD, align 4
  %172 = load i32, i32* %8, align 4
  %173 = call i32 @cx_write(i32 %171, i32 %172)
  %174 = load i32, i32* @MC417_MIRD, align 4
  %175 = load i32, i32* @MC417_MIRDY, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* @MCI_REGISTER_DATA_BYTE3, align 4
  %178 = or i32 %176, %177
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* @MC417_RWD, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 @cx_write(i32 %179, i32 %180)
  %182 = load i32, i32* @MC417_MIWR, align 4
  %183 = load i32, i32* @MC417_MIRDY, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @MCI_REGISTER_DATA_BYTE3, align 4
  %186 = or i32 %184, %185
  store i32 %186, i32* %8, align 4
  %187 = load i32, i32* @MC417_RWD, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @cx_write(i32 %187, i32 %188)
  %190 = load i32, i32* @MC417_RWD, align 4
  %191 = call i32 @cx_read(i32 %190)
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = and i32 %192, 255
  %194 = shl i32 %193, 24
  %195 = load i32, i32* %10, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %10, align 4
  %197 = load i32, i32* @MC417_MIWR, align 4
  %198 = load i32, i32* @MC417_MIRD, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @MC417_MICS, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @MC417_MIRDY, align 4
  %203 = or i32 %201, %202
  store i32 %203, i32* %8, align 4
  %204 = load i32, i32* @MC417_RWD, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @cx_write(i32 %204, i32 %205)
  %207 = load i32, i32* %10, align 4
  %208 = load i32*, i32** %6, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* %7, align 4
  ret i32 %209
}

declare dso_local i32 @cx_write(i32, i32) #1

declare dso_local i32 @mc417_wait_ready(%struct.cx23885_dev*) #1

declare dso_local i32 @cx_read(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
