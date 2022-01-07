; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_activate_rx_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_rx.c_mlx4_en_activate_rx_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32, i32, %struct.mlx4_en_rx_ring**, %struct.TYPE_4__** }
%struct.mlx4_en_rx_ring = type { i32, i32, i32, i32, i64, i64, i64, i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DS_SIZE = common dso_local global i32 0, align 4
@TXBB_SIZE = common dso_local global i32 0, align 4
@STAMP_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_en_activate_rx_rings(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_rx_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %11 = load i32, i32* @DS_SIZE, align 4
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %11, %14
  %16 = sext i32 %15 to i64
  %17 = add i64 4, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @roundup_pow_of_two(i32 %18)
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %117, %1
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %120

26:                                               ; preds = %20
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 2
  %29 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %29, i64 %31
  %33 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %32, align 8
  store %struct.mlx4_en_rx_ring* %33, %struct.mlx4_en_rx_ring** %4, align 8
  %34 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %34, i32 0, i32 9
  store i64 0, i64* %35, align 8
  %36 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %36, i32 0, i32 8
  store i64 0, i64* %37, align 8
  %38 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %38, i32 0, i32 4
  store i64 0, i64* %39, align 8
  %40 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %42, i64 %44
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %56 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TXBB_SIZE, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %26
  %61 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i32*
  store i32* %65, i32** %9, align 8
  %66 = load i32, i32* @STAMP_SHIFT, align 4
  %67 = shl i32 1, %66
  %68 = call i32 @cpu_to_be32(i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @TXBB_SIZE, align 4
  %72 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %73 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %60, %26
  %77 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i64 @ffs(i32 %79)
  %81 = sub nsw i64 %80, 1
  %82 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %83 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %82, i32 0, i32 6
  store i64 %81, i64* %83, align 8
  %84 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %85 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %86, %89
  %91 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %97 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @memset(i32 %95, i32 0, i32 %98)
  %100 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %101 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %100)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %113, %76
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %105 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp slt i32 %103, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %110 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @mlx4_en_init_rx_desc(%struct.mlx4_en_priv* %109, %struct.mlx4_en_rx_ring* %110, i32 %111)
  br label %113

113:                                              ; preds = %108
  %114 = load i32, i32* %5, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %5, align 4
  br label %102

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %20

120:                                              ; preds = %20
  %121 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %122 = call i32 @mlx4_en_fill_rx_buffers(%struct.mlx4_en_priv* %121)
  store i32 %122, i32* %7, align 4
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %153

126:                                              ; preds = %120
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %149, %126
  %128 = load i32, i32* %6, align 4
  %129 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %130 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = icmp slt i32 %128, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %127
  %134 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %135 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %134, i32 0, i32 2
  %136 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %136, i64 %138
  %140 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %139, align 8
  store %struct.mlx4_en_rx_ring* %140, %struct.mlx4_en_rx_ring** %4, align 8
  %141 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %142 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = sub nsw i64 %143, 1
  %145 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %146 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %145, i32 0, i32 5
  store i64 %144, i64* %146, align 8
  %147 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %4, align 8
  %148 = call i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring* %147)
  br label %149

149:                                              ; preds = %133
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %127

152:                                              ; preds = %127
  store i32 0, i32* %2, align 4
  br label %210

153:                                              ; preds = %125
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %170, %153
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %157 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %162 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %163 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %162, i32 0, i32 2
  %164 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %164, i64 %166
  %168 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %167, align 8
  %169 = call i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv* %161, %struct.mlx4_en_rx_ring* %168)
  br label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %154

173:                                              ; preds = %154
  %174 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %175 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  store i32 %177, i32* %6, align 4
  br label %178

178:                                              ; preds = %205, %173
  %179 = load i32, i32* %6, align 4
  %180 = icmp sge i32 %179, 0
  br i1 %180, label %181, label %208

181:                                              ; preds = %178
  %182 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %183 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %182, i32 0, i32 2
  %184 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %183, align 8
  %185 = load i32, i32* %6, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %184, i64 %186
  %188 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %187, align 8
  %189 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @TXBB_SIZE, align 4
  %192 = icmp sle i32 %190, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %181
  %194 = load i32, i32* @TXBB_SIZE, align 4
  %195 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %196 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %195, i32 0, i32 2
  %197 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %196, align 8
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %197, i64 %199
  %201 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %200, align 8
  %202 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %203, %194
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %193, %181
  %206 = load i32, i32* %6, align 4
  %207 = add nsw i32 %206, -1
  store i32 %207, i32* %6, align 4
  br label %178

208:                                              ; preds = %178
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %208, %152
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @mlx4_en_update_rx_prod_db(%struct.mlx4_en_rx_ring*) #1

declare dso_local i32 @mlx4_en_init_rx_desc(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*, i32) #1

declare dso_local i32 @mlx4_en_fill_rx_buffers(%struct.mlx4_en_priv*) #1

declare dso_local i32 @mlx4_en_free_rx_buf(%struct.mlx4_en_priv*, %struct.mlx4_en_rx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
