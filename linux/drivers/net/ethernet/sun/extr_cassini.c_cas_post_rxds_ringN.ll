; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_post_rxds_ringN.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_post_rxds_ringN.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32*, i32, i32*, i64, %struct.TYPE_4__**, i32, i32, i32, i32, %struct.TYPE_5__*** }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@intr = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"rxd[%d] interrupt, done: %d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@CAS_LINK_FAST_TIMEOUT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@REG_RX_KICK = common dso_local global i64 0, align 8
@N_RX_DESC_RINGS = common dso_local global i32 0, align 4
@CAS_FLAG_REG_PLUS = common dso_local global i32 0, align 4
@REG_PLUS_RX_KICK1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*, i32, i32)* @cas_post_rxds_ringN to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_post_rxds_ringN(%struct.cas* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cas*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__**, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  store %struct.cas* %0, %struct.cas** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load %struct.cas*, %struct.cas** %5, align 8
  %16 = getelementptr inbounds %struct.cas, %struct.cas* %15, i32 0, i32 9
  %17 = load %struct.TYPE_5__***, %struct.TYPE_5__**** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_5__**, %struct.TYPE_5__*** %17, i64 %19
  %21 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %20, align 8
  store %struct.TYPE_5__** %21, %struct.TYPE_5__*** %13, align 8
  %22 = load %struct.cas*, %struct.cas** %5, align 8
  %23 = getelementptr inbounds %struct.cas, %struct.cas* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.cas*, %struct.cas** %5, align 8
  %30 = load i32, i32* @intr, align 4
  %31 = load i32, i32* @KERN_DEBUG, align 4
  %32 = load %struct.cas*, %struct.cas** %5, align 8
  %33 = getelementptr inbounds %struct.cas, %struct.cas* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @netif_printk(%struct.cas* %29, i32 %30, i32 %31, i32 %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  store i32 -1, i32* %12, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, 3
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = add i32 %44, %45
  %47 = sub i32 %46, 4
  br label %51

48:                                               ; preds = %3
  %49 = load i32, i32* %8, align 4
  %50 = sub i32 %49, 4
  br label %51

51:                                               ; preds = %48, %43
  %52 = phi i32 [ %47, %43 ], [ %50, %48 ]
  %53 = call i32 @RX_DESC_ENTRY(i32 %40, i32 %52)
  store i32 %53, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %158, %51
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %165

58:                                               ; preds = %54
  %59 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %59, i64 %61
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @page_count(i32 %65)
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %68, label %152

68:                                               ; preds = %58
  %69 = load %struct.cas*, %struct.cas** %5, align 8
  %70 = call %struct.TYPE_5__* @cas_page_dequeue(%struct.cas* %69)
  store %struct.TYPE_5__* %70, %struct.TYPE_5__** %14, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %72 = icmp ne %struct.TYPE_5__* %71, null
  br i1 %72, label %116, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @CAS_FLAG_RXD_POST(i32 %74)
  %76 = load %struct.cas*, %struct.cas** %5, align 8
  %77 = getelementptr inbounds %struct.cas, %struct.cas* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.cas*, %struct.cas** %5, align 8
  %81 = getelementptr inbounds %struct.cas, %struct.cas* %80, i32 0, i32 7
  %82 = call i32 @timer_pending(i32* %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %73
  %85 = load %struct.cas*, %struct.cas** %5, align 8
  %86 = getelementptr inbounds %struct.cas, %struct.cas* %85, i32 0, i32 7
  %87 = load i64, i64* @jiffies, align 8
  %88 = load i64, i64* @CAS_LINK_FAST_TIMEOUT, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @mod_timer(i32* %86, i64 %89)
  br label %91

91:                                               ; preds = %84, %73
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.cas*, %struct.cas** %5, align 8
  %94 = getelementptr inbounds %struct.cas, %struct.cas* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* %11, align 4
  %104 = sub i32 %102, %103
  br label %106

105:                                              ; preds = %91
  br label %106

106:                                              ; preds = %105, %101
  %107 = phi i32 [ %104, %101 ], [ 0, %105 ]
  %108 = load %struct.cas*, %struct.cas** %5, align 8
  %109 = getelementptr inbounds %struct.cas, %struct.cas* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %4, align 4
  br label %207

116:                                              ; preds = %68
  %117 = load %struct.cas*, %struct.cas** %5, align 8
  %118 = getelementptr inbounds %struct.cas, %struct.cas* %117, i32 0, i32 5
  %119 = call i32 @spin_lock(i32* %118)
  %120 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %121 = load i32, i32* %8, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %120, i64 %122
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load %struct.cas*, %struct.cas** %5, align 8
  %127 = getelementptr inbounds %struct.cas, %struct.cas* %126, i32 0, i32 6
  %128 = call i32 @list_add(i32* %125, i32* %127)
  %129 = load %struct.cas*, %struct.cas** %5, align 8
  %130 = getelementptr inbounds %struct.cas, %struct.cas* %129, i32 0, i32 5
  %131 = call i32 @spin_unlock(i32* %130)
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @cpu_to_le64(i32 %134)
  %136 = load %struct.cas*, %struct.cas** %5, align 8
  %137 = getelementptr inbounds %struct.cas, %struct.cas* %136, i32 0, i32 4
  %138 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %137, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %138, i64 %140
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  store i32 %135, i32* %146, align 4
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %148 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %13, align 8
  %149 = load i32, i32* %8, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %148, i64 %150
  store %struct.TYPE_5__* %147, %struct.TYPE_5__** %151, align 8
  br label %152

152:                                              ; preds = %116, %58
  %153 = load i32, i32* %10, align 4
  %154 = add i32 %153, 1
  store i32 %154, i32* %10, align 4
  %155 = icmp eq i32 %154, 4
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* %8, align 4
  store i32 %157, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %158

158:                                              ; preds = %156, %152
  %159 = load i32, i32* %11, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %8, align 4
  %163 = add i32 %162, 1
  %164 = call i32 @RX_DESC_ENTRY(i32 %161, i32 %163)
  store i32 %164, i32* %8, align 4
  br label %54

165:                                              ; preds = %54
  %166 = load i32, i32* %8, align 4
  %167 = load %struct.cas*, %struct.cas** %5, align 8
  %168 = getelementptr inbounds %struct.cas, %struct.cas* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  %173 = load i32, i32* %12, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %165
  store i32 0, i32* %4, align 4
  br label %207

176:                                              ; preds = %165
  %177 = load i32, i32* %6, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %187

179:                                              ; preds = %176
  %180 = load i32, i32* %12, align 4
  %181 = load %struct.cas*, %struct.cas** %5, align 8
  %182 = getelementptr inbounds %struct.cas, %struct.cas* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @REG_RX_KICK, align 8
  %185 = add nsw i64 %183, %184
  %186 = call i32 @writel(i32 %180, i64 %185)
  br label %206

187:                                              ; preds = %176
  %188 = load i32, i32* @N_RX_DESC_RINGS, align 4
  %189 = icmp sgt i32 %188, 1
  br i1 %189, label %190, label %205

190:                                              ; preds = %187
  %191 = load %struct.cas*, %struct.cas** %5, align 8
  %192 = getelementptr inbounds %struct.cas, %struct.cas* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @CAS_FLAG_REG_PLUS, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %190
  %198 = load i32, i32* %12, align 4
  %199 = load %struct.cas*, %struct.cas** %5, align 8
  %200 = getelementptr inbounds %struct.cas, %struct.cas* %199, i32 0, i32 3
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @REG_PLUS_RX_KICK1, align 8
  %203 = add nsw i64 %201, %202
  %204 = call i32 @writel(i32 %198, i64 %203)
  br label %205

205:                                              ; preds = %197, %190, %187
  br label %206

206:                                              ; preds = %205, %179
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %206, %175, %106
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local i32 @netif_printk(%struct.cas*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @RX_DESC_ENTRY(i32, i32) #1

declare dso_local i32 @page_count(i32) #1

declare dso_local %struct.TYPE_5__* @cas_page_dequeue(%struct.cas*) #1

declare dso_local i32 @CAS_FLAG_RXD_POST(i32) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
