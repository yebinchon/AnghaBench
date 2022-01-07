; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npa.c_npa_ctx_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_npa.c_npa_ctx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_pfvf = type { i32*, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.rvu_pfvf*)* @npa_ctx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @npa_ctx_free(%struct.rvu* %0, %struct.rvu_pfvf* %1) #0 {
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca %struct.rvu_pfvf*, align 8
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  store %struct.rvu_pfvf* %1, %struct.rvu_pfvf** %4, align 8
  %5 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %6 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @kfree(i32* %7)
  %9 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %10 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %9, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = load %struct.rvu*, %struct.rvu** %3, align 8
  %12 = getelementptr inbounds %struct.rvu, %struct.rvu* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %15 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @qmem_free(i32 %13, i32* %16)
  %18 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %19 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %18, i32 0, i32 3
  store i32* null, i32** %19, align 8
  %20 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %21 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @kfree(i32* %22)
  %24 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %25 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load %struct.rvu*, %struct.rvu** %3, align 8
  %27 = getelementptr inbounds %struct.rvu, %struct.rvu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %30 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @qmem_free(i32 %28, i32* %31)
  %33 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %34 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.rvu*, %struct.rvu** %3, align 8
  %36 = getelementptr inbounds %struct.rvu, %struct.rvu* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %39 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @qmem_free(i32 %37, i32* %40)
  %42 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %4, align 8
  %43 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
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
