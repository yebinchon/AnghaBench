; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2055.c_b2055_upload_inittab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_radio_2055.c_b2055_upload_inittab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b2055_inittab_entry = type { i32, i32, i32 }
%struct.b43_wldev = type { i32 }

@b2055_inittab = common dso_local global %struct.b2055_inittab_entry* null, align 8
@B2055_INITTAB_ENTRY_OK = common dso_local global i32 0, align 4
@B2055_INITTAB_UPLOAD = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b2055_upload_inittab(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b2055_inittab_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %64, %3
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.b2055_inittab_entry*, %struct.b2055_inittab_entry** @b2055_inittab, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.b2055_inittab_entry* %13)
  %15 = icmp ult i32 %12, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %11
  %17 = load %struct.b2055_inittab_entry*, %struct.b2055_inittab_entry** @b2055_inittab, align 8
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.b2055_inittab_entry, %struct.b2055_inittab_entry* %17, i64 %19
  store %struct.b2055_inittab_entry* %20, %struct.b2055_inittab_entry** %7, align 8
  %21 = load %struct.b2055_inittab_entry*, %struct.b2055_inittab_entry** %7, align 8
  %22 = getelementptr inbounds %struct.b2055_inittab_entry, %struct.b2055_inittab_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @B2055_INITTAB_ENTRY_OK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  br label %64

28:                                               ; preds = %16
  %29 = load %struct.b2055_inittab_entry*, %struct.b2055_inittab_entry** %7, align 8
  %30 = getelementptr inbounds %struct.b2055_inittab_entry, %struct.b2055_inittab_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @B2055_INITTAB_UPLOAD, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %63

38:                                               ; preds = %35, %28
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.b2055_inittab_entry*, %struct.b2055_inittab_entry** %7, align 8
  %43 = getelementptr inbounds %struct.b2055_inittab_entry, %struct.b2055_inittab_entry* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %10, align 4
  br label %49

45:                                               ; preds = %38
  %46 = load %struct.b2055_inittab_entry*, %struct.b2055_inittab_entry** %7, align 8
  %47 = getelementptr inbounds %struct.b2055_inittab_entry, %struct.b2055_inittab_entry* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @b43_radio_write16(%struct.b43_wldev* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = urem i32 %55, 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %49
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %60 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %61 = call i32 @b43_read32(%struct.b43_wldev* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %49
  br label %63

63:                                               ; preds = %62, %35
  br label %64

64:                                               ; preds = %63, %27
  %65 = load i32, i32* %8, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %8, align 4
  br label %11

67:                                               ; preds = %11
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.b2055_inittab_entry*) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
