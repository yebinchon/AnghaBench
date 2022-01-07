; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_create_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_eba.c_ubi_eba_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_eba_table = type { %struct.ubi_eba_table*, i32 }
%struct.ubi_volume = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@UBI_LEB_UNMAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ubi_eba_table* @ubi_eba_create_table(%struct.ubi_volume* %0, i32 %1) #0 {
  %3 = alloca %struct.ubi_eba_table*, align 8
  %4 = alloca %struct.ubi_volume*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_eba_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubi_volume* %0, %struct.ubi_volume** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ubi_eba_table* @kzalloc(i32 16, i32 %11)
  store %struct.ubi_eba_table* %12, %struct.ubi_eba_table** %6, align 8
  %13 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %6, align 8
  %14 = icmp ne %struct.ubi_eba_table* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ubi_eba_table* @ERR_PTR(i32 %17)
  store %struct.ubi_eba_table* %18, %struct.ubi_eba_table** %3, align 8
  br label %58

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.ubi_eba_table* @kmalloc_array(i32 %20, i32 16, i32 %21)
  %23 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %6, align 8
  %24 = getelementptr inbounds %struct.ubi_eba_table, %struct.ubi_eba_table* %23, i32 0, i32 0
  store %struct.ubi_eba_table* %22, %struct.ubi_eba_table** %24, align 8
  %25 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %6, align 8
  %26 = getelementptr inbounds %struct.ubi_eba_table, %struct.ubi_eba_table* %25, i32 0, i32 0
  %27 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %26, align 8
  %28 = icmp ne %struct.ubi_eba_table* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %49

30:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %44, %30
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %31
  %36 = load i32, i32* @UBI_LEB_UNMAPPED, align 4
  %37 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %6, align 8
  %38 = getelementptr inbounds %struct.ubi_eba_table, %struct.ubi_eba_table* %37, i32 0, i32 0
  %39 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ubi_eba_table, %struct.ubi_eba_table* %39, i64 %41
  %43 = getelementptr inbounds %struct.ubi_eba_table, %struct.ubi_eba_table* %42, i32 0, i32 1
  store i32 %36, i32* %43, align 8
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %31

47:                                               ; preds = %31
  %48 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %6, align 8
  store %struct.ubi_eba_table* %48, %struct.ubi_eba_table** %3, align 8
  br label %58

49:                                               ; preds = %29
  %50 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %6, align 8
  %51 = getelementptr inbounds %struct.ubi_eba_table, %struct.ubi_eba_table* %50, i32 0, i32 0
  %52 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %51, align 8
  %53 = call i32 @kfree(%struct.ubi_eba_table* %52)
  %54 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %6, align 8
  %55 = call i32 @kfree(%struct.ubi_eba_table* %54)
  %56 = load i32, i32* %7, align 4
  %57 = call %struct.ubi_eba_table* @ERR_PTR(i32 %56)
  store %struct.ubi_eba_table* %57, %struct.ubi_eba_table** %3, align 8
  br label %58

58:                                               ; preds = %49, %47, %15
  %59 = load %struct.ubi_eba_table*, %struct.ubi_eba_table** %3, align 8
  ret %struct.ubi_eba_table* %59
}

declare dso_local %struct.ubi_eba_table* @kzalloc(i32, i32) #1

declare dso_local %struct.ubi_eba_table* @ERR_PTR(i32) #1

declare dso_local %struct.ubi_eba_table* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ubi_eba_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
