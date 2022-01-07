; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_debugfs.c_shm16write__write_file.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_debugfs.c_shm16write__write_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"0x%X 0x%X 0x%X 0x%X\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@B43_MAX_SHM_ROUTING = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@B43_MAX_SHM_ADDR = common dso_local global i32 0, align 4
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i8*, i64)* @shm16write__write_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm16write__write_file(%struct.b43_wldev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @sscanf(i8* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %8, i32* %9, i32* %10, i32* %11)
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp ne i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %77

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @B43_MAX_SHM_ROUTING, align 4
  %24 = icmp ugt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @EADDRNOTAVAIL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %77

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @B43_MAX_SHM_ADDR, align 4
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load i32, i32* @EADDRNOTAVAIL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %77

35:                                               ; preds = %28
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @B43_SHM_SHARED, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = urem i32 %40, 2
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EADDRNOTAVAIL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %77

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %10, align 4
  %49 = icmp ugt i32 %48, 65535
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %11, align 4
  %52 = icmp ugt i32 %51, 65535
  br i1 %52, label %53, label %56

53:                                               ; preds = %50, %47
  %54 = load i32, i32* @E2BIG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %77

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 0, i32* %12, align 4
  br label %65

60:                                               ; preds = %56
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @b43_shm_read16(%struct.b43_wldev* %61, i32 %62, i32 %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %60, %59
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %12, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %12, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %12, align 4
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @b43_shm_write16(%struct.b43_wldev* %72, i32 %73, i32 %74, i32 %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %65, %53, %43, %32, %25, %18
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
