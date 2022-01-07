; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_flush_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_flush_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpsw_ale = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ALE_ENTRY_WORDS = common dso_local global i32 0, align 4
@ALE_TYPE_ADDR = common dso_local global i32 0, align 4
@ALE_TYPE_VLAN_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_ale_flush_multicast(%struct.cpsw_ale* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.cpsw_ale*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [6 x i32], align 16
  store %struct.cpsw_ale* %0, %struct.cpsw_ale** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @ALE_ENTRY_WORDS, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %66, %3
  %17 = load i32, i32* %10, align 4
  %18 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %19 = getelementptr inbounds %struct.cpsw_ale, %struct.cpsw_ale* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %69

23:                                               ; preds = %16
  %24 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i32 @cpsw_ale_read(%struct.cpsw_ale* %24, i32 %25, i32* %15)
  %27 = call i32 @cpsw_ale_get_entry_type(i32* %15)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ALE_TYPE_ADDR, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ALE_TYPE_VLAN_ADDR, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %66

36:                                               ; preds = %31, %23
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, -1
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = call i32 @cpsw_ale_get_vlan_id(i32* %15)
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %66

44:                                               ; preds = %39, %36
  %45 = call i64 @cpsw_ale_get_mcast(i32* %15)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = call i64 @cpsw_ale_get_super(i32* %15)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %66

51:                                               ; preds = %47
  %52 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %53 = call i32 @cpsw_ale_get_addr(i32* %15, i32* %52)
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %55 = call i32 @is_broadcast_ether_addr(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @cpsw_ale_flush_mcast(%struct.cpsw_ale* %58, i32* %15, i32 %59)
  br label %61

61:                                               ; preds = %57, %51
  br label %62

62:                                               ; preds = %61, %44
  %63 = load %struct.cpsw_ale*, %struct.cpsw_ale** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @cpsw_ale_write(%struct.cpsw_ale* %63, i32 %64, i32* %15)
  br label %66

66:                                               ; preds = %62, %50, %43, %35
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %16

69:                                               ; preds = %16
  %70 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %70)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpsw_ale_read(%struct.cpsw_ale*, i32, i32*) #2

declare dso_local i32 @cpsw_ale_get_entry_type(i32*) #2

declare dso_local i32 @cpsw_ale_get_vlan_id(i32*) #2

declare dso_local i64 @cpsw_ale_get_mcast(i32*) #2

declare dso_local i64 @cpsw_ale_get_super(i32*) #2

declare dso_local i32 @cpsw_ale_get_addr(i32*, i32*) #2

declare dso_local i32 @is_broadcast_ether_addr(i32*) #2

declare dso_local i32 @cpsw_ale_flush_mcast(%struct.cpsw_ale*, i32*, i32) #2

declare dso_local i32 @cpsw_ale_write(%struct.cpsw_ale*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
