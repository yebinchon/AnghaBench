; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_find_link_frs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_find_link_frs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_pfvf*, %struct.rvu_pfvf* }
%struct.rvu_pfvf = type { i32, i32 }
%struct.nix_frs_cfg = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.nix_frs_cfg*, i32)* @nix_find_link_frs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nix_find_link_frs(%struct.rvu* %0, %struct.nix_frs_cfg* %1, i32 %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca %struct.nix_frs_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rvu_pfvf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store %struct.nix_frs_cfg* %1, %struct.nix_frs_cfg** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @rvu_get_pf(i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.rvu*, %struct.rvu** %4, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %16, i32 %17)
  store %struct.rvu_pfvf* %18, %struct.rvu_pfvf** %8, align 8
  %19 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %23 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %3
  %29 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %30 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %33 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %3
  %35 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %36 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %9, align 4
  %38 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %39 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %44 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %47

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %42
  %48 = phi i32 [ %45, %42 ], [ 0, %46 ]
  store i32 %48, i32* %10, align 4
  %49 = load %struct.rvu*, %struct.rvu** %4, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @rvu_get_pf_numvfs(%struct.rvu* %49, i32 %50, i32* %11, i32* %12)
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %95, %47
  %53 = load i32, i32* %13, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %52
  %57 = load %struct.rvu*, %struct.rvu** %4, align 8
  %58 = getelementptr inbounds %struct.rvu, %struct.rvu* %57, i32 0, i32 1
  %59 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %59, i64 %63
  store %struct.rvu_pfvf* %64, %struct.rvu_pfvf** %8, align 8
  %65 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %66 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %56
  %71 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %72 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %70, %56
  %75 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %76 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %74
  %80 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %81 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %79
  %85 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %86 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %92 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %10, align 4
  br label %94

94:                                               ; preds = %90, %84, %79, %74
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %52

98:                                               ; preds = %52
  %99 = load %struct.rvu*, %struct.rvu** %4, align 8
  %100 = getelementptr inbounds %struct.rvu, %struct.rvu* %99, i32 0, i32 0
  %101 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %100, align 8
  %102 = load i32, i32* %7, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %101, i64 %103
  store %struct.rvu_pfvf* %104, %struct.rvu_pfvf** %8, align 8
  %105 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %106 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %9, align 4
  %109 = icmp sgt i32 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %98
  %111 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %112 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %110, %98
  %115 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %116 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %114
  %120 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %121 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %126 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %10, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %8, align 8
  %132 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %10, align 4
  br label %134

134:                                              ; preds = %130, %124, %119, %114
  %135 = load i32, i32* %9, align 4
  %136 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %137 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %136, i32 0, i32 0
  store i32 %135, i32* %137, align 8
  %138 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %139 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %134
  %143 = load i32, i32* %10, align 4
  %144 = load %struct.nix_frs_cfg*, %struct.nix_frs_cfg** %5, align 8
  %145 = getelementptr inbounds %struct.nix_frs_cfg, %struct.nix_frs_cfg* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 4
  br label %146

146:                                              ; preds = %142, %134
  ret void
}

declare dso_local i32 @rvu_get_pf(i32) #1

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_pf_numvfs(%struct.rvu*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
