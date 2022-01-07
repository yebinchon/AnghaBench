; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000_check_alt_mac_addr_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_mac.c_e1000_check_alt_mac_addr_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*, i64*, i32)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NVM_COMPAT = common dso_local global i32 0, align 4
@e1000_82573 = common dso_local global i64 0, align 8
@NVM_ALT_MAC_ADDR_PTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@E1000_FUNC_1 = common dso_local global i64 0, align 8
@E1000_ALT_MAC_ADDRESS_OFFSET_LAN1 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Ignoring Alternate Mac Address with MC bit set\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_check_alt_mac_addr_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %12 = load i32, i32* @ETH_ALEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %17 = load i32, i32* @NVM_COMPAT, align 4
  %18 = call i64 @e1000_read_nvm(%struct.e1000_hw* %16, i32 %17, i32 1, i32* %8)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %109

23:                                               ; preds = %1
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @e1000_82573, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i64 0, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %109

31:                                               ; preds = %23
  %32 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %33 = load i32, i32* @NVM_ALT_MAC_ADDR_PTR, align 4
  %34 = call i64 @e1000_read_nvm(%struct.e1000_hw* %32, i32 %33, i32 1, i32* %7)
  store i64 %34, i64* %5, align 8
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %39 = load i64, i64* %5, align 8
  store i64 %39, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %109

40:                                               ; preds = %31
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 65535
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  store i64 0, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %109

47:                                               ; preds = %43
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @E1000_FUNC_1, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i64, i64* @E1000_ALT_MAC_ADDRESS_OFFSET_LAN1, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %55
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %47
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %92, %60
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %95

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %4, align 4
  %68 = ashr i32 %67, 1
  %69 = add nsw i32 %66, %68
  store i32 %69, i32* %6, align 4
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i64 @e1000_read_nvm(%struct.e1000_hw* %70, i32 %71, i32 1, i32* %8)
  store i64 %72, i64* %5, align 8
  %73 = load i64, i64* %5, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = call i32 @e_dbg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %77 = load i64, i64* %5, align 8
  store i64 %77, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %109

78:                                               ; preds = %65
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 255
  %81 = sext i32 %80 to i64
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %15, i64 %83
  store i64 %81, i64* %84, align 8
  %85 = load i32, i32* %8, align 4
  %86 = ashr i32 %85, 8
  %87 = sext i32 %86 to i64
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %15, i64 %90
  store i64 %87, i64* %91, align 8
  br label %92

92:                                               ; preds = %78
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 2
  store i32 %94, i32* %4, align 4
  br label %61

95:                                               ; preds = %61
  %96 = call i64 @is_multicast_ether_addr(i64* %15)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @e_dbg(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %109

100:                                              ; preds = %95
  %101 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %102 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 0
  %105 = load i32 (%struct.e1000_hw.0*, i64*, i32)*, i32 (%struct.e1000_hw.0*, i64*, i32)** %104, align 8
  %106 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %107 = bitcast %struct.e1000_hw* %106 to %struct.e1000_hw.0*
  %108 = call i32 %105(%struct.e1000_hw.0* %107, i64* %15, i32 0)
  store i64 0, i64* %2, align 8
  store i32 1, i32* %11, align 4
  br label %109

109:                                              ; preds = %100, %98, %75, %46, %37, %30, %21
  %110 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i64, i64* %2, align 8
  ret i64 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @e1000_read_nvm(%struct.e1000_hw*, i32, i32, i32*) #2

declare dso_local i32 @e_dbg(i8*) #2

declare dso_local i64 @is_multicast_ether_addr(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
