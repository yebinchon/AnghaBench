; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_new_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_alloc_new_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_id_tbl = type { i32, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_id_tbl*)* @cnic_alloc_new_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_alloc_new_id(%struct.cnic_id_tbl* %0) #0 {
  %2 = alloca %struct.cnic_id_tbl*, align 8
  %3 = alloca i32, align 4
  store %struct.cnic_id_tbl* %0, %struct.cnic_id_tbl** %2, align 8
  %4 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %5 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %4, i32 0, i32 2
  %6 = call i32 @spin_lock(i32* %5)
  %7 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %8 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %11 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %14 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @find_next_zero_bit(i32 %9, i32 %12, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %19 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  store i32 -1, i32* %3, align 4
  %23 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %24 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %22
  %28 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %29 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %32 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @find_first_zero_bit(i32 %30, i32 %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %37 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %27
  br label %42

42:                                               ; preds = %41, %22
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %46 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %71

49:                                               ; preds = %43
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %52 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @set_bit(i32 %50, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  %57 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %58 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %56, %60
  %62 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %63 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %65 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %49, %43
  %72 = load %struct.cnic_id_tbl*, %struct.cnic_id_tbl** %2, align 8
  %73 = getelementptr inbounds %struct.cnic_id_tbl, %struct.cnic_id_tbl* %72, i32 0, i32 2
  %74 = call i32 @spin_unlock(i32* %73)
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
