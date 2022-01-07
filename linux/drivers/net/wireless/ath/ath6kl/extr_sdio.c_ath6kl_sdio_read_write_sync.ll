; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_read_write_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_read_write_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }
%struct.ath6kl_sdio = type { i32, i32, i32* }

@HIF_BLOCK_BASIS = common dso_local global i32 0, align 4
@HIF_MBOX_BLOCK_SIZE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HIF_WRITE = common dso_local global i32 0, align 4
@HIF_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath6kl*, i32, i32*, i32, i32)* @ath6kl_sdio_read_write_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_read_write_sync(%struct.ath6kl* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath6kl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ath6kl_sdio*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ath6kl*, %struct.ath6kl** %7, align 8
  %17 = call %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl* %16)
  store %struct.ath6kl_sdio* %17, %struct.ath6kl_sdio** %12, align 8
  store i32* null, i32** %13, align 8
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @HIF_BLOCK_BASIS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @HIF_MBOX_BLOCK_SIZE, align 4
  %25 = call i32 @round_down(i32 %23, i32 %24)
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %22, %5
  %27 = load i32*, i32** %9, align 8
  %28 = call i64 @buf_needs_bounce(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %55

30:                                               ; preds = %26
  %31 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %12, align 8
  %32 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %87

38:                                               ; preds = %30
  %39 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %12, align 8
  %40 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %12, align 8
  %43 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %13, align 8
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* @HIF_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %38
  %50 = load i32*, i32** %13, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @memcpy(i32* %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %38
  store i32 1, i32* %15, align 4
  br label %57

55:                                               ; preds = %26
  %56 = load i32*, i32** %9, align 8
  store i32* %56, i32** %13, align 8
  br label %57

57:                                               ; preds = %55, %54
  %58 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %12, align 8
  %59 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32*, i32** %13, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @ath6kl_sdio_io(i32 %60, i32 %61, i32 %62, i32* %63, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @HIF_READ, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %57
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %13, align 8
  %76 = load i32, i32* %10, align 4
  %77 = call i32 @memcpy(i32* %74, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %70, %57
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %12, align 8
  %83 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %82, i32 0, i32 0
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %14, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %85, %35
  %88 = load i32, i32* %6, align 4
  ret i32 %88
}

declare dso_local %struct.ath6kl_sdio* @ath6kl_sdio_priv(%struct.ath6kl*) #1

declare dso_local i32 @round_down(i32, i32) #1

declare dso_local i64 @buf_needs_bounce(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ath6kl_sdio_io(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
