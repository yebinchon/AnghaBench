; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_copy_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_copy_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i8**, i8**, i32*, i32, %struct.mlx4_en_port_profile*, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_en_port_profile = type { i32*, i32, i32, i32, i32 }

@DS_SIZE = common dso_local global i32 0, align 4
@MLX4_EN_MAX_RX_FRAGS = common dso_local global i32 0, align 4
@MLX4_EN_NUM_TX_TYPES = common dso_local global i32 0, align 4
@MAX_TX_RINGS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.mlx4_en_priv*, %struct.mlx4_en_port_profile*)* @mlx4_en_copy_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_copy_priv(%struct.mlx4_en_priv* %0, %struct.mlx4_en_priv* %1, %struct.mlx4_en_port_profile* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.mlx4_en_port_profile*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %5, align 8
  store %struct.mlx4_en_priv* %1, %struct.mlx4_en_priv** %6, align 8
  store %struct.mlx4_en_port_profile* %2, %struct.mlx4_en_port_profile** %7, align 8
  %9 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %10 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %9, i32 0, i32 11
  %11 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %11, i32 0, i32 4
  %13 = call i32 @memcpy(i32* %10, i32* %12, i32 4)
  %14 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %15 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %17, i32 0, i32 10
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %22, i32 0, i32 9
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 8
  store i32 %26, i32* %28, align 4
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %32, i32 0, i32 7
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 6
  store i32 %36, i32* %38, align 4
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %45 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %46 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %45, i32 0, i32 4
  store %struct.mlx4_en_port_profile* %44, %struct.mlx4_en_port_profile** %46, align 8
  %47 = load i32, i32* @DS_SIZE, align 4
  %48 = load i32, i32* @MLX4_EN_MAX_RX_FRAGS, align 4
  %49 = mul nsw i32 %47, %48
  %50 = sext i32 %49 to i64
  %51 = add i64 4, %50
  %52 = trunc i64 %51 to i32
  %53 = call i32 @roundup_pow_of_two(i32 %52)
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %130, %3
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @MLX4_EN_NUM_TX_TYPES, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %133

60:                                               ; preds = %56
  %61 = load %struct.mlx4_en_port_profile*, %struct.mlx4_en_port_profile** %7, align 8
  %62 = getelementptr inbounds %struct.mlx4_en_port_profile, %struct.mlx4_en_port_profile* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %69 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %75 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %60
  br label %130

83:                                               ; preds = %60
  %84 = load i32, i32* @MAX_TX_RINGS, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i8* @kcalloc(i32 %84, i32 8, i32 %85)
  %87 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %88 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %87, i32 0, i32 1
  %89 = load i8**, i8*** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8*, i8** %89, i64 %91
  store i8* %86, i8** %92, align 8
  %93 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %94 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %93, i32 0, i32 1
  %95 = load i8**, i8*** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8*, i8** %95, i64 %97
  %99 = load i8*, i8** %98, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %102, label %101

101:                                              ; preds = %83
  br label %134

102:                                              ; preds = %83
  %103 = load i32, i32* @MAX_TX_RINGS, align 4
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @kcalloc(i32 %103, i32 8, i32 %104)
  %106 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %107 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %106, i32 0, i32 0
  %108 = load i8**, i8*** %107, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8*, i8** %108, i64 %110
  store i8* %105, i8** %111, align 8
  %112 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %113 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %112, i32 0, i32 0
  %114 = load i8**, i8*** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %114, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = icmp ne i8* %118, null
  br i1 %119, label %129, label %120

120:                                              ; preds = %102
  %121 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %122 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %121, i32 0, i32 1
  %123 = load i8**, i8*** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @kfree(i8* %127)
  br label %134

129:                                              ; preds = %102
  br label %130

130:                                              ; preds = %129, %82
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %8, align 4
  br label %56

133:                                              ; preds = %56
  store i32 0, i32* %4, align 4
  br label %159

134:                                              ; preds = %120, %101
  br label %135

135:                                              ; preds = %139, %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %8, align 4
  %138 = icmp ne i32 %136, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %135
  %140 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %141 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %140, i32 0, i32 1
  %142 = load i8**, i8*** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i8*, i8** %142, i64 %144
  %146 = load i8*, i8** %145, align 8
  %147 = call i32 @kfree(i8* %146)
  %148 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %149 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %148, i32 0, i32 0
  %150 = load i8**, i8*** %149, align 8
  %151 = load i32, i32* %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8*, i8** %150, i64 %152
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @kfree(i8* %154)
  br label %135

156:                                              ; preds = %135
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %4, align 4
  br label %159

159:                                              ; preds = %156, %133
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
