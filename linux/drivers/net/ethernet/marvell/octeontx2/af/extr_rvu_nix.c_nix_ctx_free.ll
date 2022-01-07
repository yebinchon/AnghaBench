; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_ctx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nix_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_pfvf = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.rvu_pfvf*)* @nix_ctx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nix_ctx_free(%struct.rvu* %0, %struct.rvu_pfvf* %1) #0 {
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca %struct.rvu_pfvf*, align 8
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  store %struct.rvu_pfvf* %1, %struct.rvu_pfvf** %4, align 8
  %5 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %6 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %5, i32 0, i32 8
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @kfree(i32* %7)
  %9 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %10 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %9, i32 0, i32 6
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %14 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %13, i32 0, i32 7
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %18 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.rvu*, %struct.rvu** %3, align 8
  %23 = getelementptr inbounds %struct.rvu, %struct.rvu* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %26 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @qmem_free(i32 %24, i32* %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %31 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.rvu*, %struct.rvu** %3, align 8
  %36 = getelementptr inbounds %struct.rvu, %struct.rvu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %39 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @qmem_free(i32 %37, i32* %40)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %44 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.rvu*, %struct.rvu** %3, align 8
  %49 = getelementptr inbounds %struct.rvu, %struct.rvu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %52 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @qmem_free(i32 %50, i32* %53)
  br label %55

55:                                               ; preds = %47, %42
  %56 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %57 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.rvu*, %struct.rvu** %3, align 8
  %62 = getelementptr inbounds %struct.rvu, %struct.rvu* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %65 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @qmem_free(i32 %63, i32* %66)
  br label %68

68:                                               ; preds = %60, %55
  %69 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %70 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.rvu*, %struct.rvu** %3, align 8
  %75 = getelementptr inbounds %struct.rvu, %struct.rvu* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %78 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @qmem_free(i32 %76, i32* %79)
  br label %81

81:                                               ; preds = %73, %68
  %82 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %83 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.rvu*, %struct.rvu** %3, align 8
  %88 = getelementptr inbounds %struct.rvu, %struct.rvu* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %91 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @qmem_free(i32 %89, i32* %92)
  br label %94

94:                                               ; preds = %86, %81
  %95 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %96 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %95, i32 0, i32 8
  store i32* null, i32** %96, align 8
  %97 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %98 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %97, i32 0, i32 7
  store i32* null, i32** %98, align 8
  %99 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %100 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %99, i32 0, i32 6
  store i32* null, i32** %100, align 8
  %101 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %102 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %101, i32 0, i32 5
  store i32* null, i32** %102, align 8
  %103 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %104 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %103, i32 0, i32 4
  store i32* null, i32** %104, align 8
  %105 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %106 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %105, i32 0, i32 3
  store i32* null, i32** %106, align 8
  %107 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %108 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %107, i32 0, i32 2
  store i32* null, i32** %108, align 8
  %109 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %110 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %109, i32 0, i32 1
  store i32* null, i32** %110, align 8
  %111 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %112 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  ret void
}

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @qmem_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
