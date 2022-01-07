; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_mc417_memory_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-417.c_mc417_memory_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@MC417_OEN = common dso_local global i32 0, align 4
@MC417_MIRDY = common dso_local global i32 0, align 4
@MC417_MIRD = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE2 = common dso_local global i32 0, align 4
@MCI_MODE_MEMORY_READ = common dso_local global i32 0, align 4
@MC417_RWD = common dso_local global i32 0, align 4
@MC417_MICS = common dso_local global i32 0, align 4
@MC417_MIWR = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_ADDRESS_BYTE0 = common dso_local global i32 0, align 4
@MC417_MIDATA = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE3 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE2 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE1 = common dso_local global i32 0, align 4
@MCI_MEMORY_DATA_BYTE0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mc417_memory_read(%struct.cx23885_dev* %0, i32 %1, i32* %2) #0 {
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
  %17 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE2, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MCI_MODE_MEMORY_READ, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 63
  %24 = or i32 %20, %23
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @MC417_RWD, align 4
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @cx_write(i32 %25, i32 %26)
  %28 = load i32, i32* @MC417_MICS, align 4
  %29 = load i32, i32* @MC417_MIWR, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @MC417_RWD, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @cx_write(i32 %33, i32 %34)
  %36 = load i32, i32* @MC417_MIRD, align 4
  %37 = load i32, i32* @MC417_MIRDY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE1, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = ashr i32 %41, 8
  %43 = and i32 %42, 255
  %44 = or i32 %40, %43
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @MC417_RWD, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @cx_write(i32 %45, i32 %46)
  %48 = load i32, i32* @MC417_MICS, align 4
  %49 = load i32, i32* @MC417_MIWR, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %8, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* @MC417_RWD, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @cx_write(i32 %53, i32 %54)
  %56 = load i32, i32* @MC417_MIRD, align 4
  %57 = load i32, i32* @MC417_MIRDY, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @MCI_MEMORY_ADDRESS_BYTE0, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 255
  %63 = or i32 %60, %62
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @MC417_RWD, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @cx_write(i32 %64, i32 %65)
  %67 = load i32, i32* @MC417_MICS, align 4
  %68 = load i32, i32* @MC417_MIWR, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* @MC417_RWD, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @cx_write(i32 %72, i32 %73)
  %75 = load %struct.cx23885_dev*, %struct.cx23885_dev** %4, align 8
  %76 = call i32 @mc417_wait_ready(%struct.cx23885_dev* %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @MC417_OEN, align 4
  %78 = load i32, i32* @MC417_MIRDY, align 4
  %79 = load i32, i32* @MC417_MIDATA, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @cx_write(i32 %77, i32 %80)
  %82 = load i32, i32* @MC417_MIRD, align 4
  %83 = load i32, i32* @MC417_MIRDY, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @MCI_MEMORY_DATA_BYTE3, align 4
  %86 = or i32 %84, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @MC417_RWD, align 4
  %88 = load i32, i32* %8, align 4
  %89 = call i32 @cx_write(i32 %87, i32 %88)
  %90 = load i32, i32* @MC417_MIWR, align 4
  %91 = load i32, i32* @MC417_MIRDY, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @MCI_MEMORY_DATA_BYTE3, align 4
  %94 = or i32 %92, %93
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* @MC417_RWD, align 4
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @cx_write(i32 %95, i32 %96)
  %98 = load i32, i32* @MC417_RWD, align 4
  %99 = call i32 @cx_read(i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = and i32 %100, 255
  %102 = shl i32 %101, 24
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* @MC417_MIWR, align 4
  %104 = load i32, i32* @MC417_MIRD, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @MC417_MICS, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @MC417_MIRDY, align 4
  %109 = or i32 %107, %108
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* @MC417_RWD, align 4
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @cx_write(i32 %110, i32 %111)
  %113 = load i32, i32* @MC417_MIRD, align 4
  %114 = load i32, i32* @MC417_MIRDY, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @MCI_MEMORY_DATA_BYTE2, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %8, align 4
  %118 = load i32, i32* @MC417_RWD, align 4
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @cx_write(i32 %118, i32 %119)
  %121 = load i32, i32* @MC417_MIWR, align 4
  %122 = load i32, i32* @MC417_MIRDY, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @MCI_MEMORY_DATA_BYTE2, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* @MC417_RWD, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @cx_write(i32 %126, i32 %127)
  %129 = load i32, i32* @MC417_RWD, align 4
  %130 = call i32 @cx_read(i32 %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, 255
  %133 = shl i32 %132, 16
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load i32, i32* @MC417_MIWR, align 4
  %137 = load i32, i32* @MC417_MIRD, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @MC417_MICS, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @MC417_MIRDY, align 4
  %142 = or i32 %140, %141
  store i32 %142, i32* %8, align 4
  %143 = load i32, i32* @MC417_RWD, align 4
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @cx_write(i32 %143, i32 %144)
  %146 = load i32, i32* @MC417_MIRD, align 4
  %147 = load i32, i32* @MC417_MIRDY, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @MCI_MEMORY_DATA_BYTE1, align 4
  %150 = or i32 %148, %149
  store i32 %150, i32* %8, align 4
  %151 = load i32, i32* @MC417_RWD, align 4
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @cx_write(i32 %151, i32 %152)
  %154 = load i32, i32* @MC417_MIWR, align 4
  %155 = load i32, i32* @MC417_MIRDY, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @MCI_MEMORY_DATA_BYTE1, align 4
  %158 = or i32 %156, %157
  store i32 %158, i32* %8, align 4
  %159 = load i32, i32* @MC417_RWD, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @cx_write(i32 %159, i32 %160)
  %162 = load i32, i32* @MC417_RWD, align 4
  %163 = call i32 @cx_read(i32 %162)
  store i32 %163, i32* %9, align 4
  %164 = load i32, i32* %9, align 4
  %165 = and i32 %164, 255
  %166 = shl i32 %165, 8
  %167 = load i32, i32* %10, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %10, align 4
  %169 = load i32, i32* @MC417_MIWR, align 4
  %170 = load i32, i32* @MC417_MIRD, align 4
  %171 = or i32 %169, %170
  %172 = load i32, i32* @MC417_MICS, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @MC417_MIRDY, align 4
  %175 = or i32 %173, %174
  store i32 %175, i32* %8, align 4
  %176 = load i32, i32* @MC417_RWD, align 4
  %177 = load i32, i32* %8, align 4
  %178 = call i32 @cx_write(i32 %176, i32 %177)
  %179 = load i32, i32* @MC417_MIRD, align 4
  %180 = load i32, i32* @MC417_MIRDY, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @MCI_MEMORY_DATA_BYTE0, align 4
  %183 = or i32 %181, %182
  store i32 %183, i32* %8, align 4
  %184 = load i32, i32* @MC417_RWD, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @cx_write(i32 %184, i32 %185)
  %187 = load i32, i32* @MC417_MIWR, align 4
  %188 = load i32, i32* @MC417_MIRDY, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @MCI_MEMORY_DATA_BYTE0, align 4
  %191 = or i32 %189, %190
  store i32 %191, i32* %8, align 4
  %192 = load i32, i32* @MC417_RWD, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @cx_write(i32 %192, i32 %193)
  %195 = load i32, i32* @MC417_RWD, align 4
  %196 = call i32 @cx_read(i32 %195)
  store i32 %196, i32* %9, align 4
  %197 = load i32, i32* %9, align 4
  %198 = and i32 %197, 255
  %199 = load i32, i32* %10, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %10, align 4
  %201 = load i32, i32* @MC417_MIWR, align 4
  %202 = load i32, i32* @MC417_MIRD, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @MC417_MICS, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @MC417_MIRDY, align 4
  %207 = or i32 %205, %206
  store i32 %207, i32* %8, align 4
  %208 = load i32, i32* @MC417_RWD, align 4
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @cx_write(i32 %208, i32 %209)
  %211 = load i32, i32* %10, align 4
  %212 = load i32*, i32** %6, align 8
  store i32 %211, i32* %212, align 4
  %213 = load i32, i32* %7, align 4
  ret i32 %213
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
