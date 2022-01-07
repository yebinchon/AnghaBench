; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_cc2520.c_cc2520_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cc2520_private = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, i64, i32*, %struct.cc2520_private* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32*, i32*, i8* }
%struct.TYPE_9__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@cc2520_ops = common dso_local global i32 0, align 4
@IEEE802154_HW_TX_OMIT_CKSUM = common dso_local global i32 0, align 4
@IEEE802154_HW_AFILT = common dso_local global i32 0, align 4
@IEEE802154_HW_PROMISCUOUS = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_TXPOWER = common dso_local global i32 0, align 4
@cc2520_powers = common dso_local global i8* null, align 8
@cc2520_cc2591_powers = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"registered cc2520\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cc2520_private*)* @cc2520_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc2520_register(%struct.cc2520_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cc2520_private*, align 8
  %4 = alloca i32, align 4
  store %struct.cc2520_private* %0, %struct.cc2520_private** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = call %struct.TYPE_10__* @ieee802154_alloc_hw(i32 24, i32* @cc2520_ops)
  %8 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %9 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %8, i32 0, i32 0
  store %struct.TYPE_10__* %7, %struct.TYPE_10__** %9, align 8
  %10 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %11 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %10, i32 0, i32 0
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %164

15:                                               ; preds = %1
  %16 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %17 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %18 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %17, i32 0, i32 0
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 4
  store %struct.cc2520_private* %16, %struct.cc2520_private** %20, align 8
  %21 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %22 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %21, i32 0, i32 1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %26 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 3
  store i32* %24, i32** %28, align 8
  %29 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %30 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %34 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = call i32 @ieee802154_random_extended_addr(i32* %38)
  %40 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %41 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 134215680, i32* %48, align 4
  %49 = load i32, i32* @IEEE802154_HW_TX_OMIT_CKSUM, align 4
  %50 = load i32, i32* @IEEE802154_HW_AFILT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @IEEE802154_HW_PROMISCUOUS, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %55 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load i32, i32* @WPAN_PHY_FLAG_TXPOWER, align 4
  %59 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %60 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  store i32 %58, i32* %64, align 4
  %65 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %66 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %104, label %69

69:                                               ; preds = %15
  %70 = load i8*, i8** @cc2520_powers, align 8
  %71 = bitcast i8* %70 to i32*
  %72 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %73 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %72, i32 0, i32 0
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32* %71, i32** %78, align 8
  %79 = load i8*, i8** @cc2520_powers, align 8
  %80 = call i8* @ARRAY_SIZE(i8* %79)
  %81 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %82 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 2
  store i8* %80, i8** %87, align 8
  %88 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %89 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %99 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %98, i32 0, i32 0
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 2
  store i32 %97, i32* %103, align 8
  br label %139

104:                                              ; preds = %15
  %105 = load i8*, i8** @cc2520_cc2591_powers, align 8
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %108 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %107, i32 0, i32 0
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  store i32* %106, i32** %113, align 8
  %114 = load i8*, i8** @cc2520_cc2591_powers, align 8
  %115 = call i8* @ARRAY_SIZE(i8* %114)
  %116 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %117 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %116, i32 0, i32 0
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 2
  store i8* %115, i8** %122, align 8
  %123 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %124 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %123, i32 0, i32 0
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %134 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  store i32 %132, i32* %138, align 8
  br label %139

139:                                              ; preds = %104, %69
  %140 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %141 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %140, i32 0, i32 0
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i32 11, i32* %145, align 8
  %146 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %147 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %146, i32 0, i32 1
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = call i32 @dev_vdbg(i32* %149, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %151 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %152 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %151, i32 0, i32 0
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %152, align 8
  %154 = call i32 @ieee802154_register_hw(%struct.TYPE_10__* %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* %4, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %139
  br label %159

158:                                              ; preds = %139
  store i32 0, i32* %2, align 4
  br label %166

159:                                              ; preds = %157
  %160 = load %struct.cc2520_private*, %struct.cc2520_private** %3, align 8
  %161 = getelementptr inbounds %struct.cc2520_private, %struct.cc2520_private* %160, i32 0, i32 0
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %161, align 8
  %163 = call i32 @ieee802154_free_hw(%struct.TYPE_10__* %162)
  br label %164

164:                                              ; preds = %159, %14
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %164, %158
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.TYPE_10__* @ieee802154_alloc_hw(i32, i32*) #1

declare dso_local i32 @ieee802154_random_extended_addr(i32*) #1

declare dso_local i8* @ARRAY_SIZE(i8*) #1

declare dso_local i32 @dev_vdbg(i32*, i8*) #1

declare dso_local i32 @ieee802154_register_hw(%struct.TYPE_10__*) #1

declare dso_local i32 @ieee802154_free_hw(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
