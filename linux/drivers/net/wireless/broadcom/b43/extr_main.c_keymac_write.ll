; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_keymac_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_keymac_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_NR_GROUP_KEYS = common dso_local global i32 0, align 4
@B43_NR_PAIRWISE_KEYS = common dso_local global i32 0, align 4
@B43_SHM_RCMTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32*)* @keymac_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keymac_write(%struct.b43_wldev* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = load i32, i32* @B43_NR_GROUP_KEYS, align 4
  %11 = mul nsw i32 %10, 2
  store i32 %11, i32* %8, align 4
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %13 = call i64 @b43_new_kidx_api(%struct.b43_wldev* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @B43_NR_GROUP_KEYS, align 4
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %15, %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @B43_WARN_ON(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @B43_NR_PAIRWISE_KEYS, align 4
  %28 = icmp sge i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @B43_WARN_ON(i32 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %70

33:                                               ; preds = %17
  %34 = load i32*, i32** %6, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %6, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 1
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32*, i32** %6, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 24
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %55
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %33, %17
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %72 = load i32, i32* @B43_SHM_RCMTA, align 4
  %73 = load i32, i32* %5, align 4
  %74 = mul nsw i32 %73, 2
  %75 = add nsw i32 %74, 0
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @b43_shm_write32(%struct.b43_wldev* %71, i32 %72, i64 %76, i32 %78)
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %81 = load i32, i32* @B43_SHM_RCMTA, align 4
  %82 = load i32, i32* %5, align 4
  %83 = mul nsw i32 %82, 2
  %84 = add nsw i32 %83, 1
  %85 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @b43_shm_write16(%struct.b43_wldev* %80, i32 %81, i32 %84, i32 %86)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @b43_new_kidx_api(%struct.b43_wldev*) #2

declare dso_local i32 @B43_WARN_ON(i32) #2

declare dso_local i32 @b43_shm_write32(%struct.b43_wldev*, i32, i64, i32) #2

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
