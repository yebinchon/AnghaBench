; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_next_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sh_mmcif.c_sh_mmcif_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_mmcif_host = type { i64, i64, i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mmc_data* }
%struct.mmc_data = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sh_mmcif_host*, i32*)* @sh_mmcif_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_mmcif_next_block(%struct.sh_mmcif_host* %0, i32* %1) #0 {
  %3 = alloca %struct.sh_mmcif_host*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  store %struct.sh_mmcif_host* %0, %struct.sh_mmcif_host** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %7 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %6, i32 0, i32 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  store %struct.mmc_data* %10, %struct.mmc_data** %5, align 8
  %11 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %12 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %15 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %19 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %22 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %20, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %30 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %58

38:                                               ; preds = %2
  %39 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %40 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %42 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  %45 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp slt i64 %44, %47
  br i1 %48, label %49, label %57

49:                                               ; preds = %38
  %50 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 1
  store %struct.TYPE_4__* %53, %struct.TYPE_4__** %51, align 8
  %54 = call i32* @sg_virt(%struct.TYPE_4__* %53)
  %55 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %56 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %55, i32 0, i32 3
  store i32* %54, i32** %56, align 8
  br label %57

57:                                               ; preds = %49, %38
  br label %62

58:                                               ; preds = %2
  %59 = load i32*, i32** %4, align 8
  %60 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %61 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %60, i32 0, i32 3
  store i32* %59, i32** %61, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = load %struct.sh_mmcif_host*, %struct.sh_mmcif_host** %3, align 8
  %64 = getelementptr inbounds %struct.sh_mmcif_host, %struct.sh_mmcif_host* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %65, %68
  %70 = zext i1 %69 to i32
  ret i32 %70
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32* @sg_virt(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
