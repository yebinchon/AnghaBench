; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_get_addr_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rockchip/rga/extr_rga-hw.c_rga_get_addr_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rga_corners_addr_offset = type { %struct.rga_addr_offset, %struct.rga_addr_offset, %struct.rga_addr_offset, %struct.rga_addr_offset }
%struct.rga_addr_offset = type { i32, i32, i32 }
%struct.rga_frame = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rga_corners_addr_offset*, %struct.rga_frame*, i32, i32, i32, i32)* @rga_get_addr_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rga_get_addr_offset(%struct.rga_corners_addr_offset* noalias sret %0, %struct.rga_frame* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.rga_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rga_addr_offset*, align 8
  %13 = alloca %struct.rga_addr_offset*, align 8
  %14 = alloca %struct.rga_addr_offset*, align 8
  %15 = alloca %struct.rga_addr_offset*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.rga_frame* %1, %struct.rga_frame** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 %5, i32* %11, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds %struct.rga_corners_addr_offset, %struct.rga_corners_addr_offset* %0, i32 0, i32 3
  store %struct.rga_addr_offset* %21, %struct.rga_addr_offset** %12, align 8
  %22 = getelementptr inbounds %struct.rga_corners_addr_offset, %struct.rga_corners_addr_offset* %0, i32 0, i32 2
  store %struct.rga_addr_offset* %22, %struct.rga_addr_offset** %13, align 8
  %23 = getelementptr inbounds %struct.rga_corners_addr_offset, %struct.rga_corners_addr_offset* %0, i32 0, i32 1
  store %struct.rga_addr_offset* %23, %struct.rga_addr_offset** %14, align 8
  %24 = getelementptr inbounds %struct.rga_corners_addr_offset, %struct.rga_corners_addr_offset* %0, i32 0, i32 0
  store %struct.rga_addr_offset* %24, %struct.rga_addr_offset** %15, align 8
  %25 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %26 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %16, align 4
  %30 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %31 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %30, i32 0, i32 3
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %36 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %20, align 4
  %40 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %41 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %16, align 4
  %44 = udiv i32 %42, %43
  store i32 %44, i32* %18, align 4
  %45 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %46 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %49 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = udiv i32 %47, %50
  store i32 %51, i32* %19, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %54 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul i32 %52, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %19, align 4
  %59 = mul i32 %57, %58
  %60 = add i32 %56, %59
  %61 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %62 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  %63 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %64 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %67 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = mul i32 %65, %68
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %17, align 4
  %72 = udiv i32 %70, %71
  %73 = load i32, i32* %18, align 4
  %74 = mul i32 %72, %73
  %75 = add i32 %69, %74
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %16, align 4
  %78 = udiv i32 %76, %77
  %79 = add i32 %75, %78
  %80 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %81 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %83 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %86 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %89 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = mul i32 %87, %90
  %92 = load i32, i32* %20, align 4
  %93 = udiv i32 %91, %92
  %94 = add i32 %84, %93
  %95 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %96 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %98 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = sub i32 %100, 1
  %102 = load %struct.rga_frame*, %struct.rga_frame** %7, align 8
  %103 = getelementptr inbounds %struct.rga_frame, %struct.rga_frame* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = mul i32 %101, %104
  %106 = add i32 %99, %105
  %107 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %13, align 8
  %108 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  %109 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %110 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %17, align 4
  %114 = udiv i32 %112, %113
  %115 = sub i32 %114, 1
  %116 = load i32, i32* %18, align 4
  %117 = mul i32 %115, %116
  %118 = add i32 %111, %117
  %119 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %13, align 8
  %120 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %122 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* %17, align 4
  %126 = udiv i32 %124, %125
  %127 = sub i32 %126, 1
  %128 = load i32, i32* %18, align 4
  %129 = mul i32 %127, %128
  %130 = add i32 %123, %129
  %131 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %13, align 8
  %132 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %131, i32 0, i32 2
  store i32 %130, i32* %132, align 4
  %133 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %134 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %10, align 4
  %137 = sub i32 %136, 1
  %138 = load i32, i32* %19, align 4
  %139 = mul i32 %137, %138
  %140 = add i32 %135, %139
  %141 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %14, align 8
  %142 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %144 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* %16, align 4
  %148 = udiv i32 %146, %147
  %149 = add i32 %145, %148
  %150 = sub i32 %149, 1
  %151 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %14, align 8
  %152 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  %153 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %12, align 8
  %154 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %16, align 4
  %158 = udiv i32 %156, %157
  %159 = add i32 %155, %158
  %160 = sub i32 %159, 1
  %161 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %14, align 8
  %162 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %13, align 8
  %164 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %10, align 4
  %167 = sub i32 %166, 1
  %168 = load i32, i32* %19, align 4
  %169 = mul i32 %167, %168
  %170 = add i32 %165, %169
  %171 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %15, align 8
  %172 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %13, align 8
  %174 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %10, align 4
  %177 = load i32, i32* %16, align 4
  %178 = udiv i32 %176, %177
  %179 = add i32 %175, %178
  %180 = sub i32 %179, 1
  %181 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %15, align 8
  %182 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  %183 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %13, align 8
  %184 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %16, align 4
  %188 = udiv i32 %186, %187
  %189 = add i32 %185, %188
  %190 = sub i32 %189, 1
  %191 = load %struct.rga_addr_offset*, %struct.rga_addr_offset** %15, align 8
  %192 = getelementptr inbounds %struct.rga_addr_offset, %struct.rga_addr_offset* %191, i32 0, i32 2
  store i32 %190, i32* %192, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
