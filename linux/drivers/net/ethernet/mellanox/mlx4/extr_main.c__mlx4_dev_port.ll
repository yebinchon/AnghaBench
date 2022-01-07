; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c__mlx4_dev_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_main.c__mlx4_dev_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_3__ = type { i32*, i32* }
%struct.mlx4_port_cap = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, %struct.mlx4_port_cap*)* @_mlx4_dev_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mlx4_dev_port(%struct.mlx4_dev* %0, i32 %1, %struct.mlx4_port_cap* %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_port_cap*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_port_cap* %2, %struct.mlx4_port_cap** %6, align 8
  %7 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %8 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 14
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32 %9, i32* %16, align 4
  %17 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %17, i32 0, i32 13
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 13
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32 %19, i32* %26, align 4
  %27 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  store i32 %29, i32* %36, align 4
  %37 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %38 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %37, i32 0, i32 11
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %39, i32* %46, align 4
  %47 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %48 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %47, i32 0, i32 12
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 12
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %49, i32* %56, align 4
  %57 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %58 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %57, i32 0, i32 11
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %61 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 11
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 %59, i32* %66, align 4
  %67 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %68 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %67, i32 0, i32 10
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %71 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 10
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %69, i32* %76, align 4
  %77 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %78 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %81 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 9
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %79, i32* %86, align 4
  %87 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %88 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %87, i32 0, i32 8
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %91 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 8
  store i32 %89, i32* %92, align 8
  %93 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %94 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %97 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %95, i32* %102, align 4
  %103 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %104 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %107 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %105, i32* %112, align 4
  %113 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %114 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %117 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %115, i32* %122, align 4
  %123 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %124 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %127 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  store i32 %125, i32* %132, align 4
  %133 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %134 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %137 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %5, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %135, i32* %142, align 4
  %143 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %144 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %147 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %5, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  store i32 %145, i32* %152, align 4
  %153 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %154 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %157 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  store i32 %155, i32* %162, align 4
  %163 = load %struct.mlx4_port_cap*, %struct.mlx4_port_cap** %6, align 8
  %164 = getelementptr inbounds %struct.mlx4_port_cap, %struct.mlx4_port_cap* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %167 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %5, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %165, i32* %172, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
